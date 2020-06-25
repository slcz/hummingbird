#include "hi.asm"

li (0x04)
sign
jc dead
li (0x84)
sign
jc 1f
jmp dead
1:
li(9)
nop
hlt
dead:
hlt
