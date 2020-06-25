#include "hi.asm"

li(0x59)
cmp data_5a lt
jc 1f
2: jmp 2b
1:
li(0x5a)
cmp data_5a lt
jc 2f
1:
li(0x05)
nop
hlt
2: jmp 2b
data_5a:
0x5a
