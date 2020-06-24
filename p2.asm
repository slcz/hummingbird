#include "hi.asm"

// Test basic instructions, "nop" dumps processor state
lh H(0x5a)
addi L(0x5a)
neg
// a = a6
nop
sign
jc 1f
li(0)
2: jmp 2b
1:
// a = 1
li(1)
nop
li (0x5a)
sign
jc 1f
// a = 2
li(2)
nop
jmp 0f
1:
li(0)
1: jmp 1b
0:
li (0x5a)
shl
// a = b4
nop
shl
// a = 68
nop
shl
// a = d0
nop
shl
// a = a0
nop
li (0x5a)
shr
// a = 2d
nop
// a = 16
shr
nop
li (0x5a)
shl4
// a = a0
nop
li (0x5a)
rol
// b4
nop
rol
// 69
nop
swap
// 96
nop
asr
// cb
1: jmp 1b
