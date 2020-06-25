#include "hi.asm"

li(0x04)
cmpi 0x04 eq
jc 1f
hlt
1:
cmpi 0x04 ne
jc dead
li(0x07)
nop
hlt
dead:
hlt
