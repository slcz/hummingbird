#include "hi.asm"

li(0x59)
cmp data_5a ne
jc 1f
hlt
1:
li(0x59)
cmp data_5a eq
jc dead
li(0x5a)
cmp data_5a eq
jc 1f
hlt
1:
li(0x6)
hlt
dead:
hlt
data_5a:
0x5a
