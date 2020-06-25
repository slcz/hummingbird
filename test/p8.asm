#include "hi.asm"

lh H(0xa5)
addi L(0xa5)
add 2f
nop
hlt
2:
0x5a
