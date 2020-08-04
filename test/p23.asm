#include "hi.asm"

li(0x82)
rol
rol
1: jmp 1b
hlt
