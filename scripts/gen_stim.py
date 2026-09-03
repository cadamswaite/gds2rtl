def generate_compressed_stimulus(bit_string):
    """
    Parses a string of bits, groups consecutive identical bits,
    and outputs Verilog testbench stimulus using repeat(N) loops.
    """
    if not bit_string:
        return ""

    lines = []
    current_bit = bit_string[0]
    count = 0
    lines.append("//" + bit_string)
    lines.append(
        f"  I={current_bit}; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;"
    )
    # Run-length grouping algorithm
    for bit in bit_string[1:]:
        if bit == current_bit:
            count += 1
        else:
            lines.append(f"I = {current_bit}; repeat({count}) @(posedge clk);  ")
            current_bit = bit
            count = 1
    lines.append(f" I = {current_bit};repeat({count}) @(posedge clk); ")
    lines.append("repeat(30) @(posedge clk);")

    return "\n".join(lines)


if __name__ == "__main__":
    try_again = "1" * 60 + "0" * 61
    bigbang = "1" * 121
    emptysky = "0" * 121
    twostars = "0000000101010000100000000000010101010000000000001010000001000001000000100000101000010000000100000010000010010001010000000"
    tnt = "0000100010000000010100100000010000000110000010000010000010000010000010010000000100000010000100000010000000001101010000000"
    tnt2 = "0000001010000000011000000010000101100000000010001000000001000001000000000001100100100000000100010000000010000101010000000"
    tnt3 = "1000000010000000001100001000010000001100000001000100000100000000100000010001000000010001000100100000000100000101100000000"

    for soln in [try_again, bigbang, emptysky, twostars, tnt, tnt2, tnt3]:
        print(generate_compressed_stimulus(soln))

    for i in range(121):
        sol = ("0" * i + "1").ljust(121, "0")
        print(generate_compressed_stimulus(sol))
