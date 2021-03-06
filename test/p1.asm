#include "hi.asm"

// Test basic instructions, "nop" dumps processor state
lh H(0x5a)
addi L(0x5a)
// a = 5a
nop
st 2f
li (1)
// a = 1
nop
add 2f
// a = 5b
nop
ld 2f
// a = 5a
nop
li (0xa5)
add 2f
addi 1
// carry is set
addic 1
// a = 2
nop
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
nop
cmp data_5a gt
jc 1f
2: jmp 2b
1: li(0)
// a = 0 a = 0
nop
li (0x5b)
cmp data_5a
jc 1f
2: jmp 2b
1: li(1)
// a = 1
nop
li(0x5a)
cmp data_5a eq
jc 1f
2: jmp 2b
1: li(2)
// a = 2
nop
li(0x59)
cmp data_5a lt
jc 1f
2: jmp 2b
1: li(3)
// a = 3
nop
li(0x59)
cmp data_5a gt
jc 1f
// a = 4
li (4)
nop
li(0x5a)
cmp data_5a ge
jc 1f
2: jmp 2b
// a = 5
1:
li (5)
nop
li(0x5a)
cmp data_5a lt nc
jc 1f
2: jmp 2b
1:
// a = 6
li (6)
2: jmp 2b
