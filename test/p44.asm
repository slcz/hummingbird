#include "hi.asm"
prolog

main:
saveframe(1f)
li(15)
jmp factorial
1:
xchg 0
hlt

factorial:
cmpi 0 ne 
jc 1f
xchg 0
jmp 8f
1:
push 0
xchg 0
saveframe(1f)
xchg 0
addi -1
jmp factorial
1:
pop 0
add 0x10
xchg 0
8: ret
