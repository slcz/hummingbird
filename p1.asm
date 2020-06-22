#include "hi.asm"

// Test basic instructions, "addi 0" dumps processor state
lh H(0x5a)
addi L(0x5a)
// a = 5a
addi 0
st 2f
li (1)
// a = 1
addi 0
add 2f
// a = 5b
addi 0
ld 2f
// a = 5a
addi 0
li (0xa5)
add 2f
addi 1
// carry is set
addic 1
// a = 2
addi 0
st 3f
li (2)
sub 3f
jc 4f
2:
data_5a: .=.+1
3: .=.+1
4:
li (0x5b)
// a = 5b
addi 0
cmp data_5a gt
jc 1f
2: jmp 2b
1: li(2)
// a = 2
addi 0
li (0x5b)
cmp data_5a ge
jc 1f
2: jmp 2b
1: li(3)
// a = 3
addi 0
li(0x5a)
cmp data_5a eq
jc 1f
2: jmp 2b
1: li(4)
// a = 4
addi 0
li(0x59)
cmp data_5a lt
jc 1f
2: jmp 2b
1: li(5)
// a = 5
addi 0
li(0x59)
cmp data_5a ge
jc 1f
li (6)
ld data_5a
shl shl shl shl
addi 0
ld data_5a
// a = 5a, rotate 9 times restore the original number
rol rol rol rol rol rol rol rol rol
1: jmp 1b
