#include "hi.asm"

lh H(0xa5)
addi L(0xa5)
add 2f
addi 1
addic 1
// a = 2
hlt
2:
0x5a
