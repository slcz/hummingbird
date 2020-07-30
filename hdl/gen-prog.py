
for i in range(2):
    name = "program{}.h".format(i)
    namei = "ucode.0{}".format(i + 1)
    a = []
    with open(namei, "r") as f:
        for line in f:
            line = int(line.rstrip(), 16)
            n = 0
            for i in range(8):
                n = n | (((line >> i) & 1) << (7 - i))
            a.append(n)
    a = a[:4096]
    with open(name, "w+") as f:
        print("const byte inc_data[] PROGMEM = {", file=f)
        for i, x in enumerate(a):
            if i > 0 and i % 8 == 0:
                print(file=f)
            if i == len(a) - 1:
                print(" {}".format(hex(x)), end='', file=f)
            else:
                print(" {},".format(hex(x)), end='', file=f)
        print(file=f)
        print("};", file=f)
