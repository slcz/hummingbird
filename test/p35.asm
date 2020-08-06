#include "hi.asm"
start:
li(1)
st start
jmp 0x100

.=0x100
main:
saveframe(1f)
li(0x5a)
ld 0
ld 1
ld 2
ret

.=0x1cc
1:
li(0x3a)
1: jmp 1b
