#include "hi.asm"

li (0x5a)
cmp data_5a eq
jc 1f
2: jmp 2b
1:
li (0x04)
nop
hlt
data_5a:
0x5a
