#include "std.asm"

prolog

.=64
greeting:
$G $u $e $s $s $  $a $  $n $u $m $b $e $r $, $  $f
$r $o $m $  $1 $- $1 $0 $0 0xa 0xd 0
win:
$C $o $r $r $e $t $! 0xa 0xd 0
toobig:
$T $o $o $  $b $i $g 0xa 0xd 0
toosmall:
$T $o $o $  $s $m $a $l $l 0xa 0xd 0

.=0x100
main:
lh 0 st number
saveframe(getchar)
li(greeting)
jmp print_p0_string
getchar:
1:
saveframe(1f)
jmp get
1:
ld secret
ne jc 3f
ld seed
ne jc 2f
addi 1
st seed
2:
cmp hundred
gt nc jc 1f
sub hundred
jmp 2b
1:
st secret
3:
ld 1
cmp nl ne jc 2f
saveframe(3f)
li(0xd)
jmp print
2:
cmp cr ne jc 3f
saveframe(3f)
li(0xa)
jmp print
3:
saveframe(1f)
ld 1
jmp print
1:
ld 1
cmp ascii_0 lt jc 1f
cmp ascii_9 gt jc 1f
sub ascii_0
st tmp
ld number
// * 10
shl shl shl add number add number add tmp st number
ld 1
1:
cmp nl eq jc 1f
cmp cr eq jc 1f
jmp getchar
1:
ld number
cmp secret
eq jc finish
cmp secret
lt jc 1f
saveframe(2f)
li(toobig)
jmp print_p0_string
2:
jmp main

1:
saveframe(2f)
li(toosmall)
jmp print_p0_string
2:
jmp main

finish:
saveframe(1f)
li(win)
jmp print_p0_string
1:
hlt

get:
ld seed
addi 1
st seed
li(8)
st ctrl
saveframe(1f)
jmp delay
1:
ld idata
push 0
lh 0
st ctrl
saveframe(1f)
jmp delay
1:
pop 0
cmpi 0 eq jc get
st 1
ret

print_p0_string:
st (1f + 1)
3:
saveframe(2f)
1:
ld 0
eq jc 3f
jmp print
2:
ld (1b + 1)
addi 1
st (1b + 1)
jmp 3b
3:
pop 0 pop 0
ret

print:
st odata
li(4)
st ctrl
saveframe(1f)
jmp delay
1:
lh 0
st ctrl
saveframe(1f)
jmp delay
1:
ret

// delay around 300 cycles
delay:
li(0xf)
st 1f
2: ror
ld 1f
addi (-1)
st 1f
ne jc 2b
ret
1: 0
cr: 0xd
nl: 0xa
ascii_0: $0
ascii_9: $9
number: 0
tmp: 0
secret: 0
seed: 0
hundred: 100
