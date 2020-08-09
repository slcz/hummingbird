#include "hi.asm"
start:
li(1)
st start
jmp 0x100

.=0x100
main:
push 0
saveframe(1f)
li(0x5a)
jmp def
1:
pop 0
ld 0
hlt

def:
addi 1
push 0
ld 0
sub 2f
st 1f+1
pop 0
1:
st 0
ret
2: 4
