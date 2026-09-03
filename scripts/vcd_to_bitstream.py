from vcdvcd import VCDVCD

# --- CONFIGURATION ---
vcd_file = "example_inputs.vcd"


vcd_file = "tnt.vcd"
target_signal = "real_tb.I"  # The signal you want to print
clock_signal = "real_tb.clk"  # Your sample clock reference

# 1. Parse the VCD file
vcd = VCDVCD(vcd_file)

# 2. Get clock edge times (Every time clock transitions to '1')
clk_tv = vcd[clock_signal].tv
posedges = [time for time, val in clk_tv if val == "1"]

# 3. Read the target signal's raw value changes
sig_tv = vcd[target_signal].tv
# Convert to a dictionary for faster random-access lookups: { time: value }
changes = {time: val for time, val in sig_tv}

# 4. Reconstruct the bitstream cycle-by-cycle
current_value = "0"  # Default initial state if unknown
bitstream = []

for sample_time in posedges:
    # If the signal explicitly changed at this exact timestamp, update it
    if sample_time in changes:
        current_value = changes[sample_time]
    else:
        # Otherwise, find the most recent historical value change
        past_changes = [t for t in changes if t < sample_time]
        if past_changes:
            current_value = changes[max(past_changes)]

    # Clean up standard vector strings if necessary (e.g., 'b1 ' -> '1')
    clean_val = current_value.strip().replace("b", "")
    bitstream.append(clean_val)

# 5. Output the result
print(f"Signal stream for {target_signal}:")
print("".join(bitstream))
