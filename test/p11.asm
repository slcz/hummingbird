#include "hi.asm"

jmp 1f
li (0x01)
2: jmp 2b
1:
li (0x02)
nop
hlt
