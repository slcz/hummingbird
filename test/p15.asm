#include "hi.asm"

li(0x59)
cmp data_5a lt
jc 1f
hlt
1:
li(0x5a)
cmp data_5a lt
jc 2f
1:
li(0x05)
hlt
2: hlt
data_5a:
0x5a
