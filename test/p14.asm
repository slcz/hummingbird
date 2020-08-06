#include "hi.asm"

li(0x5a)
cmp data_5a eq
jc 1f
hlt
1:
li(0x04)
4: jmp 4b
hlt
data_5a:
0x5a
