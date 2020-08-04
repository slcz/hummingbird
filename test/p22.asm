#include "hi.asm"

li(0xcb)
nop
shl4
1: jmp 1b
nop
hlt
