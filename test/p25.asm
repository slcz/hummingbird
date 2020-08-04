#include "hi.asm"

li(0xe5)
swap
1: jmp 1b
hlt
