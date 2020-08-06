#include "hi.asm"

lh H(0x5a)
addi L(0x5a)
st 2f
lh 1
ld 2f
hlt
2:
.=.+1
