#include "hi.asm"

// Test basic instructions, "addi 0" dumps processor state
lh H(0x5a)
addi L(0x5a)
neg
// a = a6
addi 0
sign
jc 1f
li(0)
2: jmp 2b
1:
// a = 1
li(1)
addi 0
li (0x5a)
sign
jc 1f
// a = 2
li(2)
addi 0
jmp 0f
1:
li(0)
1: jmp 1b
0:
li (0x5a)
shl
// a = b4
addi 0
shl
// a = 68
addi 0
shl
// a = d0
addi 0
shl
// a = a0
li (0x5a)
shr
// a = 2d
addi 0
// a = 16
shr
addi 0
li (0x5a)
shl4
// a = a0
addi 0
li (0x5a)
rol
// b4
addi 0
rol
// 69
addi 0
swap
// 96
addi 0
asr
1: jmp 1b
