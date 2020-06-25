#include "hi.asm"
// subroutine call, using self-modifying code

. = .+0x100
li (1f & 0xff)
st (func_end + 1)
// 0x60 is opcode JMP
li (0x60 | (1f >> 8))
st (func_end)
li (0x5a)
jmp func
1:
st 2f
li (1f & 0xff)
st (func_end + 1)
li (0x60 | (1f >> 8))
st (func_end)
ld 2f
jmp func
// a = 0x5e
1: jmp 1b
2: .=.+1

func:
addi 2 
func_end:
1: jmp 1b
