#include "hi.asm"

// loop testing 1 + 2 ... + 10
1:
ld acc
add 9f
st acc
ld 9f
addi 1
st 9f
cmp limit gt
jc 2f
jmp 1b
2: ld acc
// a = 55
2: jmp 2b

9: 1
acc: 0
limit: 10
