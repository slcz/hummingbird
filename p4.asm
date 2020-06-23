#include "hi.asm"
jmp start
// sum of vector (end with -1), sum 81, notice -1 must have (),
// to prevent 5 -1 from being treated as a single expression.
vec: 1 0 3 7 5 9 6 8 4 9 7 0 6 11 5 (-1)

start:
ld vec
addi 0
cmpi -1 eq
jc 1f
add acc
st acc
ld (start+1)
addi 1
st (start+1)
jmp start

1:
ld acc
1: jmp 1b

acc: 0
