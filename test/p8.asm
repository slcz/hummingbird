#include "hi.asm"

lh H(0xa5)
addi L(0xa5)
add 2f
1: jmp 1b
hlt
2:
0x5a
