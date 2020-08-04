#include "hi.asm"

li(0xa1)
ror
nop
ror
nop
1: jmp 1b
hlt
