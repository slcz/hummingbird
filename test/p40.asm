#include "hi.asm"
li(1)
st 0
li(0x5a)
push 0
li(0x5b)
push 0
ld 0
ld 1
ld 2
pop 0
pop 0
ld 0
1: jmp 1b
