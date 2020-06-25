#include "hi.asm"

li (0x5b)
cmp data_5a
jc 1f
2: jmp 2b
1:
li (0x01)
nop
hlt
data_5a:
0x5a
