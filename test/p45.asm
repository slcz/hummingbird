#include "hi.asm"
start:
li(1)
st start
jmp 0x100

.=0x100
main:
li(0x15)
push 0
li(0x16)
push 0
peek 0 2
hlt
