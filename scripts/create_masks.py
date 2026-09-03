mask = "AAAAABBEDDFAAJAABEEDDFAAJBBBBEEDFAAJBSSSFEEFJAJBSFFFFFFJJJBSSSFCCCBBBBBBSFCGGBKKKSSSFCGGBKKHFFFFCGGBBKHHFFFCCCBKKHFFFFFFF"

lets = set(mask)
print(f"wire [0:{len(lets)-1}] [120:0]masks = " + "{")
out = []
for let in lets:
    out.append("121'b" + "".join("1" if m == let else "0" for m in mask))
print(",\n".join(out))
print("};")
