#include "hi.asm"
prolog

iodata = 0xff0
ioctrl = 0xff1

main:
lh 0
st ioctrl

1: ld 8f
eq jc done
st iodata
// toggle ioctrl bit 2
li(4)
st ioctrl
ror ror ror ror ror ror ror ror // delay
lh 0
st ioctrl
ror ror ror ror ror ror ror ror // delay
ld 1b + 1
addi 1
st 1b + 1
jmp 1b

done: lh 0 st ioctrl hlt
8: $H $e $l $l $o $, $  $I $m $  $h $u $m $m $i $n $g $b $i $r $d $. 0
