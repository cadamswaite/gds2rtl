import argparse
import json
import re
from collections import defaultdict
from pathlib import Path

import gdsfactory as gf
import klayout.db as kdb
import shapely
import sky130
import yaml
from shapely.geometry import Point, Polygon

pdk = sky130.PDK
pdk.activate()
layer_num_to_layer = {layer.value: layer for layer in sky130.PDK.layers}


def pt_to_tuple(pt):
    return round(pt.x, 7), round(pt.y, 7)


def get_merged_polys(component, layers):
    """
    Extracts and merges layout polygons across the entire cell hierarchy
    using KLayout's C++ scanline boolean engine (kdb.Region).
    """
    layer_to_polys = {}
    layout = component.layout()
    top_cell = component.kcl.top_cell()
    dbu = component.kcl.dbu

    for layer_tuple in layers:
        layer_idx = layout.layer(*layer_tuple)
        if layer_idx < 0:
            continue
        region = kdb.Region(top_cell.begin_shapes_rec(layer_idx))
        region.merge()

        polys = [
            Polygon([(pt.x * dbu, pt.y * dbu) for pt in poly.each_point_hull()])
            for poly in region.each()
        ]
        layer_to_polys[layer_tuple] = polys

    return layer_to_polys


def parse_sky130_logic_functions(lib_file_path: str):
    """
    Parses a SkyWater 130nm .lib file to extract logic functions for each cell.
    Returns: Dict[cell_name, Dict[pin_name, function_string]]
    """
    lib_path = Path(lib_file_path)
    if not lib_path.exists():
        print(f"Error: .lib file not found at {lib_path}")
        return {}

    with open(lib_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Track logic functions
    logic_db = {}

    # We iterate through the file finding cells
    # Note: A full parser is complex; this relies on standard indentation/formatting of Sky130 libs
    raw_cells = content.split("cell (")

    for raw_block in raw_cells[1:]:  # Skip preamble
        # Extract cell name (first token before closing parenthesis)
        cell_name_match = re.match(r'("?[\w]+"?)\)', raw_block)
        if not cell_name_match:
            continue

        cell_name = cell_name_match.group(1).replace('"', "")
        logic_db[cell_name] = {}

        # HACKs to simplify output..
        if "mux2_" in cell_name:
            logic_db[cell_name]["X"] = "S ? A1 : A0"
            continue

        if "xor2_" in cell_name:
            logic_db[cell_name]["X"] = "A ^ B"
            continue

        if "xnor2_" in cell_name:
            logic_db[cell_name]["Y"] = "!(A ^ B)"
            continue

        if "dfrtp_" in cell_name or "dfxtp_" in cell_name:
            logic_db[cell_name]["Q"] = "D"
            continue
        if "dfstp_" in cell_name:
            logic_db[cell_name]["Q"] = "D"
            logic_db[cell_name]["SET"] = "SET_B"
            continue

        # Find all pins with functions inside this block
        # Look for: pin(NAME) ... function : "EQUATION";
        # We assume standard formatting where function is inside pin scope
        pin_blocks = raw_block.split("pin (")

        for pin_block in pin_blocks[1:]:
            pin_name_match = re.match(r'("?[\w]+"?)\)', pin_block)
            if pin_name_match:
                pin_name = pin_name_match.group(1).replace('"', "")

                # Search for the function definition within this pin block
                # Matches: function : "A & B";
                func_match = re.search(r'function\s*:\s*"([^"]+)"\s*;', pin_block)
                if func_match:
                    func_eq = func_match.group(1)
                    logic_db[cell_name][pin_name] = func_eq

    return logic_db


def get_sky130_logic_functions(lib_file_path: str) -> dict:
    """
    Retrieves SkyWater 130nm logic functions with automatic disk caching (JSON).
    Checks file modification timestamps to regenerate cache only when .lib changes.
    """

    lib_path = Path(lib_file_path)
    cache_path = lib_path.with_suffix(".json")
    try:
        if cache_path.exists():
            with open(cache_path, "r", encoding="utf-8") as f:
                return json.load(f)
    except Exception:
        pass  # Fall back to re-parsing on cache read failure

    if not lib_path.exists():
        print(f"Error: .lib file not found at {lib_path}")
        return {}
    logic_db = parse_sky130_logic_functions(str(lib_path))

    try:
        with open(cache_path, "w", encoding="utf-8") as f:
            json.dump(logic_db, f, indent=2)
    except Exception as e:
        print(f"Warning: Could not write logic cache to {cache_path}: {e}")

    return logic_db


def substitute_pins(expr: str, pin_map: dict) -> str:
    """
    Substitutes standard cell pin identifiers in boolean expressions with their
    corresponding connected net names in a single pass using word boundaries.
    """
    if not pin_map or not expr:
        return expr
    sorted_pins = sorted(pin_map.keys(), key=len, reverse=True)
    pattern = re.compile(r"\b(" + "|".join(re.escape(p) for p in sorted_pins) + r")\b")
    return pattern.sub(lambda m: pin_map[m.group(0)], expr)


def generate_verilog(
    out_eqns, net_to_top_pin, out_partitions, partition_inputs, out_pts=None
):
    def loc_comment(sig):
        if out_pts and sig in out_pts:
            pt = out_pts[sig]
            return f" // loc: [{round(pt.x, 3)}, {round(pt.y, 3)}]"
        return ""

    outs = set()
    out_regs = set()
    nets = set()
    regs = set()
    undriven_nets = set()
    ios = set(net_to_top_pin.values())
    all_consumed = set().union(*partition_inputs.values()) if partition_inputs else set()

    for _out, (ins, _gate, pins, *_rest) in out_eqns.items():
        # Check all nets used as inputs to this gate (logic expressions + control pins)
        gate_inputs = set(re.findall(r"\b[a-zA-Z_][a-zA-Z0-9_$]*(?:\[\d+\])?", ins))
        for ctrl in ("CLK", "RESET_B", "SET_B", "RESET", "SET"):
            if cnet := pins.get(ctrl):
                gate_inputs.add(cnet)
        for inp in sorted(gate_inputs):
            if inp not in out_eqns and inp not in ios:
                print(f"[Undriven Input] Net '{inp}' is consumed by {_out} ({_gate}) but never driven.")
                undriven_nets.add(_out)

    # Unused nets: driven by a gate but never consumed as an input anywhere and not a top-level output
    for out_net, (_ins, gate_name, *_rest) in sorted(out_eqns.items()):
        if out_net not in all_consumed and out_net not in ios:
            loc = loc_comment(out_net).strip()
            print(f"[Unused Net] Net '{out_net}' driven by {gate_name} is neither consumed internally nor an external output.{loc}")

    for output, (_in, gate_name, *_rest) in out_eqns.items():
        is_seq = "dfrtp_" in gate_name or "dfxtp_" in gate_name or "dfstp_" in gate_name

        if output in ios:
            if is_seq:
                out_regs.add(output)
            outs.add(output)
            continue

        if is_seq:
            regs.add(output)
            continue

        nets.add(output)

    inputs = set(ios) - outs - out_regs
    nets = nets - ios - regs - outs

    out_ranges = defaultdict(int)
    for out in outs | out_regs:
        name, *idx = out.strip("]").split("[")
        if len(idx) > 0:
            out_ranges[name] = max(out_ranges[name], int(idx[0]))

    for op, idx in out_ranges.items():
        for i in range(idx + 1):
            outs.discard(f"{op}[{i}]")
            ios.discard(f"{op}[{i}]")
        ios.add(op)

    sv_out = []
    sv_out.append(f"module demo ({', '.join(sorted(ios))});")
    for inp in sorted(inputs):
        sv_out.append(f" input {inp};")
    for out in sorted(outs):
        reg_str = " reg" if out in out_regs else ""
        sv_out.append(f" output{reg_str} {out};{loc_comment(out)}")
    for out, idx in sorted(out_ranges.items()):
        reg_str = " reg" if out in out_regs else ""
        sv_out.append(f" output{reg_str} [{idx}:0] {out};{loc_comment(out)}")
    for reg in sorted(regs):
        sv_out.append(f" (* ivl_do_not_elide *) reg {reg};{loc_comment(reg)}")

    for net in sorted(nets):
        sv_out.append(f" (* ivl_do_not_elide *) wire {net};{loc_comment(net)}")

    partn_output_consumed_by_other_partn = defaultdict(set)
    for partn_name, outputs in sorted(out_partitions.items()):
        for in_partn_name, inputs in sorted(partition_inputs.items()):
            if in_partn_name == partn_name:
                continue
            for output in outputs:
                if output in inputs:
                    partn_output_consumed_by_other_partn[partn_name].add(output)

    for partn_name, outputs in sorted(out_partitions.items()):
        sv_out.append(f" \n\n//// Partition {partn_name}")
        set_inputs = partition_inputs[partn_name] - set(outputs)
        set_inputs.discard("")
        sv_out.append(f" \n//// Inputs\n//{"\n//".join(sorted(set_inputs))}")
        sv_out.append(
            f" \n//// Outputs\n//{"\n//".join(sorted(partn_output_consumed_by_other_partn[partn_name]))}"
        )

        for output in sorted(outputs):
            if output in undriven_nets:
                continue
            if inp_gate := out_eqns.get(output):
                inputs, gate_name, pins = inp_gate
                loc = loc_comment(output)
                clk_net = pins.get("CLK", "clk")
                rst_net = pins.get("RESET_B", "rst_n")
                set_net = pins.get("SET_B", "rst_n")

                in_out_assert = f"""`ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic {output}_changed;
                 always @(posedge {clk_net} or negedge {rst_net})
                     if (!{rst_net}) {output}_changed <= 0;
                     else if (!enable && !{output}_changed) {output}_changed <= ({output} != {inputs});
                 p_{output}_never_changed: assert property ( !{output}_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic {output}_changed;
                 always @(posedge {clk_net} or negedge {rst_net})
                     if (!{rst_net}) {output}_changed <= 0;
                     else if (!{output}_changed) {output}_changed <= ({output} != {inputs});
                 p_{output}_never_changed: assert property ( outputting_cnt_lt_15 || !{output}_changed);
 `endif
 """

                if "dfrtp_" in gate_name:
                    loc_header = f"   {loc}\n" if loc else ""
                    sv_out.append(
                        f"""{loc_header}    always @(posedge {clk_net} or negedge {rst_net})
        if (!{rst_net}) {output} <= 0;
        else               {output} <= {inputs}; \n {in_out_assert}
    """
                    )
                elif "dfstp_" in gate_name:
                    loc_header = f"   {loc}\n" if loc else ""
                    sv_out.append(
                        f"""{loc_header}    always @(posedge {clk_net} or negedge {set_net})
        if (!{set_net}) {output} <= 1;
        else               {output} <= {inputs};\n {in_out_assert}
    """
                    )
                elif "dfxtp_" in gate_name:
                    loc_header = f"   {loc}\n" if loc else ""
                    sv_out.append(f"""{loc_header}    always @(posedge {clk_net})
                    {output} <= {inputs};\n {in_out_assert}
    """)
                else:
                    sv_out.append(f"assign {output} = {inputs};{loc}")
    sv_out.append("endmodule")

    return sv_out


def main() -> None:
    parser = argparse.ArgumentParser(description="Parse an argument string")
    parser.add_argument(
        "-i",
        "--input_yaml",
        type=str,
        required=True,
        help="Yaml file with gds info and more",
    )
    parser.add_argument(
        "-o",
        "--output_verilog",
        type=str,
        required=False,
        default=None,
        help="Optional output Verilog file path override",
    )

    args = parser.parse_args()
    with open(args.input_yaml, "r") as file:
        yaml_data = yaml.safe_load(file)
    output_verilog = args.output_verilog or yaml_data.get("output_verilog", "output.v")

    partition_names = {}
    for item in yaml_data.get("partitions", []):
        coords = (
            (item["coords"][0][0], item["coords"][0][1]),
            (item["coords"][1][0], item["coords"][1][1]),
        )

        partition_names[item["name"]] = coords

    legacy_netnames = {}
    probe_netnames = []
    for item in yaml_data.get("netnames", []):
        if isinstance(item, dict):
            if "probe" in item or "coords" in item or "coord" in item:
                coords = item.get("probe") or item.get("coords") or item.get("coord")
                name = item.get("name")
                if coords and name:
                    probe_netnames.append((coords, name))
            else:
                for k, v in item.items():
                    try:
                        legacy_netnames[int(k)] = v
                    except ValueError:
                        pass

    net_custom_names = dict(legacy_netnames)

    input_gds = yaml_data.get("input_gds")
    if not input_gds:
        raise ValueError("input_gds must be specified in the input YAML file.")

    component = gf.import_gds(input_gds, rename_duplicated_cells=False)
    metals = [(66, 20), (67, 20), (68, 20), (69, 20), (70, 20), (71, 20), (72, 20)]
    vias = [
        (66, 44),
        (67, 44),
        (68, 44),
        (69, 44),
        (70, 44),
        (71, 44),
    ]

    # 1. Create a brand new, empty layout
    layout = kdb.Layout()

    top_cell = layout.create_cell("TOP")

    layer_info = kdb.LayerInfo(68, 5)
    layer_index = layout.insert_layer(layer_info)
    dbu = component.kcl.dbu  # Database units to microns scale factor

    for xy, text_string in probe_netnames:
        text_position = kdb.DTrans(xy[0] / dbu, xy[1] / dbu)
        text_object = kdb.Text(text_string, text_position)

        top_cell.shapes(layer_index).insert(text_object)

    part_box_layer_info = kdb.LayerInfo(66,5)
    part_box_layer_index = layout.insert_layer(part_box_layer_info)

    part_txt_layer_info = kdb.LayerInfo(67,5)
    part_txt_layer_index = layout.insert_layer(part_txt_layer_info)

    for item in yaml_data.get("partitions", []):
        coords = item.get("coords")
        name = item.get("name", "")
        if not coords or len(coords) < 2:
            continue
        x0, y0 = coords[0][0], coords[0][1]
        x1, y1 = coords[1][0], coords[1][1]
        left, right = min(x0, x1), max(x0, x1)
        bottom, top = min(y0, y1), max(y0, y1)

        box = kdb.Box(
            round(left / dbu),
            round(bottom / dbu),
            round(right / dbu),
            round(top / dbu),
        )
        top_cell.shapes(part_box_layer_index).insert(box)

        if name:
            # text_position = kdb.DTrans((left + right) / (2 * dbu), (bottom + top) / (2 * dbu))
            text_position = kdb.DTrans(left / dbu, bottom / dbu)
            top_cell.shapes(part_txt_layer_index).insert(kdb.Text(name, text_position))

    # 7. Export the layout out to a GDSII stream file
    output_filename = yaml_data.get("output_text_gds", "sky130_text_layout.gds")
    print(f"Partitions and output pin locs written to {output_filename}")
    layout.write(output_filename)

    def get_partition(pt):
        for part_name, (bl, tr) in partition_names.items():
            if pt.x > bl[0] and pt.y > bl[1] and pt.x < tr[0] and pt.y < tr[1]:
                return part_name
        return ""

    merged_polys = get_merged_polys(component, metals + vias)
    layer_metals = {}
    layer_metal_rtrees = {}
    layer_vias = {}
    for (layer, datatype), polys in merged_polys.items():
        if datatype == 44:
            layer_vias[layer] = polys
        elif datatype == 20:
            layer_metals[layer] = polys
            layer_metal_rtrees[layer] = shapely.STRtree(polys)

    via_connections_low_up = defaultdict(lambda: defaultdict(list))
    via_connections_up_low = defaultdict(lambda: defaultdict(list))
    for layer, vias in layer_vias.items():
        # Via connects current layer to layer above
        current_rtree = layer_metal_rtrees[layer]
        above_rtree = layer_metal_rtrees[layer + 1]

        lower_pt_to_polys = defaultdict(list)
        lower_results = current_rtree.query(vias, predicate="intersects")

        for via_idx, lower_poly_idx in zip(*lower_results):
            lower_pt_to_polys[int(via_idx)].append(int(lower_poly_idx))

        upper_results = above_rtree.query(vias, predicate="intersects")
        for via_idx, upper_poly_idx in zip(*upper_results):
            for lower_poly_idx in lower_pt_to_polys[via_idx]:
                # print(f"via connects {layer} to {layer+1} at point {vias[via_idx]} lower layer is {lower_poly_idx} upper idx is {upper_poly_idx}")
                via_connections_low_up[layer][int(lower_poly_idx)].append(
                    int(upper_poly_idx)
                )
                via_connections_up_low[layer + 1][int(upper_poly_idx)].append(
                    int(lower_poly_idx)
                )

    layer_id_to_net = defaultdict(dict)
    netcnt = 0
    visited_nodes = {}
    start_layer = 67
    for start_idx in range(len(layer_metal_rtrees[start_layer])):

        if start_idx in layer_id_to_net[start_layer]:
            continue

        stack = [(start_layer, start_idx)]

        while stack:
            curr_layer, curr_idx = stack.pop()

            if (curr_layer, curr_idx) in visited_nodes:
                continue
            visited_nodes[(curr_layer, curr_idx)] = netcnt

            # Assign the active net ID to this layout element
            layer_id_to_net[curr_layer][curr_idx] = netcnt

            # --- 2. TRAVEL DOWNWARD (Vias Down) ---
            for lower_metal_idx in via_connections_up_low[curr_layer].get(curr_idx, []):
                target = (curr_layer - 1, lower_metal_idx)
                if target not in visited_nodes:
                    stack.append(target)

            # --- 3. TRAVEL UPWARD (Vias Up) ---
            for upper_metal_idx in via_connections_low_up[curr_layer].get(curr_idx, []):
                target = (curr_layer + 1, upper_metal_idx)
                if target not in visited_nodes:
                    stack.append((curr_layer + 1, upper_metal_idx))

        # Increment the network ID counter for the next unlinked routing group
        netcnt += 1

    # pprint(layer_id_to_net)

    layout = component.layout()
    dbu = component.kcl.dbu  # Database units to microns scale factor
    shapes = component.shapes((70, 5))
    top_pin_names = []
    top_pin_locs = []
    for shape in shapes.each():
        if shape.is_text():

            text_obj = shape.text
            pin_name = text_obj.string
            pos = text_obj.trans.disp

            pos_um = Point(round(pos.x * dbu, 7), round(pos.y * dbu, 7))
            # print(f"Top Pin: {pin_name} -> Location: {pos_um} um (Layer: {layer_info.layer})")
            top_pin_names.append(pin_name)
            top_pin_locs.append(pos_um)

    met3_rtree = layer_metal_rtrees[70]
    top_pin_to_met3 = met3_rtree.query(top_pin_locs, predicate="intersects")
    net_to_top_pin = {}
    for top_pin_name_idx, met3_idx in zip(*top_pin_to_met3):
        net = layer_id_to_net[70][met3_idx]
        net_to_top_pin[net] = top_pin_names[top_pin_name_idx]

    for coords, name in probe_netnames:
        pt = Point(round(coords[0], 7), round(coords[1], 7))
        matched = False
        for layer in (67, 68, 69, 70, 71, 72, 66):
            if layer not in layer_metal_rtrees:
                continue
            matches = layer_metal_rtrees[layer].query(pt, predicate="intersects")
            if len(matches) > 0:
                poly_idx = matches[0]
                if poly_idx in layer_id_to_net[layer]:
                    net_id = layer_id_to_net[layer][poly_idx]
                    net_custom_names[net_id] = name
                    matched = True
                    break
        if not matched:
            print(
                f"Warning: Probe at ({coords[0]}, {coords[1]}) for net '{name}' did not intersect any metal layer."
            )

    def get_net(net_id):
        if net_id in net_to_top_pin:
            return net_to_top_pin[net_id]
        if id := net_custom_names.get(net_id):
            return id
        return f"net__{net_id}"

    default_lib = Path(__file__).resolve().parent / "sky130_fd_sc_hd__tt_025C_1v80.lib"
    lib_file = yaml_data.get("lib_file", str(default_lib))
    functions = get_sky130_logic_functions(str(lib_file))

    cell_pin_cache = {}
    instance_names = []
    instance_points = []
    dbu = component.kcl.dbu  # Database units to microns scale factor
    for instance_id, instance in enumerate(component.insts):
        gate_cell = (
            instance.cell
        )  # The underlying gate layout (e.g., sky130_fd_sc_hd__and2_1)
        gate_name = gate_cell.name
        # Instance transform represents its placement matrix (translation + rotation)
        inst_trans = instance.dtrans

        if gate_name.startswith(("VIA_", "INTERNAL_")):
            continue
        if "vpwrvgnd" in gate_name or "decap" in gate_name:
            continue

        if gate_name not in cell_pin_cache:
            if gate_name in pdk.cells:
                cell_obj = pdk.cells[gate_name]()
                labels = cell_obj.get_labels(layer=((67, 5)))
                cell_pin_cache[gate_name] = [(lbl.trans, lbl.string) for lbl in labels]
            else:
                cell_pin_cache[gate_name] = []

        for label_trans, pin_string in cell_pin_cache[gate_name]:
            global_trans = inst_trans * label_trans
            global_pos = global_trans.disp

            instance_names.append((gate_name, instance_id, pin_string))
            instance_points.append(Point(global_pos.x, global_pos.y))

    li1_rtree = layer_metal_rtrees[67]
    cell_to_li1 = li1_rtree.query(instance_points, predicate="intersects")
    indexes_hit = set()
    gate_connections = defaultdict(lambda: defaultdict(dict))
    for instance_pts_idx, li1_idx in zip(*cell_to_li1):
        indexes_hit.add(instance_pts_idx)
        gate_name, instance_num, pin_name = instance_names[instance_pts_idx]
        pt = instance_points[instance_pts_idx]

        net_val = get_net(layer_id_to_net[67][li1_idx])
        gate_connections[gate_name][instance_num][pin_name] = (net_val, pt)
        # print((net_val, li1_idx, instance_points[instance_pts_idx]))

    # Gate connections extracted successfully

    out_eqns = {}
    out_pts = {}
    out_partitions = defaultdict(list)
    partition_inputs = defaultdict(set)
    for gate_name, instances in gate_connections.items():
        # print(f"{gate_name=} {functions[gate_name]=}")

        for instance_id, pins in instances.items():
            fn = functions[gate_name]
            pin_map = {pin: net for pin, (net, _pt) in pins.items()}

            for output_pin, inputs_expr in fn.items():
                output = substitute_pins(output_pin, pin_map)
                inputs = substitute_pins(inputs_expr, pin_map)

                pt = (
                    pins[output_pin][1]
                    if output_pin in pins
                    else next(iter(pins.values()))[1]
                )
                out_pts[output] = pt

                part_name = get_partition(pt)
                out_partitions[part_name].append(output)
                out_eqns[output] = (inputs, gate_name, pin_map)

                used_inputs = set(
                    re.findall(r"\b[a-zA-Z_][a-zA-Z0-9_$]*(?:\[\d+\])?", inputs)
                )
                for ctrl_pin in ("CLK", "RESET_B", "SET_B", "RESET", "SET"):
                    if ctrl_net := pin_map.get(ctrl_pin):
                        used_inputs.add(ctrl_net)
                partition_inputs[part_name] |= used_inputs
    # pprint(partition_inputs)
    with open(output_verilog, "w") as f:
        f.write(
            "\n".join(
                generate_verilog(
                    out_eqns, net_to_top_pin, out_partitions, partition_inputs, out_pts
                )
            )
        )


if __name__ == "__main__":
    main()
