#include "hi.asm"

li(0x59)
cmp data_5a gt
jc 1f
2:
li(0x5b)
cmp data_5a gt
jc 2f
hlt
2:
li(0x5a)
cmp data_5a gt
jc 1f
li(0x3)
4: jmp 4b
hlt
1: hlt
data_5a:
0x5a
