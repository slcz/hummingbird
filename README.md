# Hummingbird 8-bit CPU instruction set

Hummingbird is a 8 bit 74xx IC based CPU. It is inspired by [Nibbler 4 bit CPU](https://www.bigmessowires.com/nibbler/).  The key differences are,
1. Databus is extended to 8 bit and instruction bus is 12 bit.
2. Von Neumann architecture. There are a 4Kx8 program store and a 4Kx8 RAM.
   Code and data are all stored in RAM. After power-on reset, the entire
   program store is copied to RAM and control transfers to RAM afterwards.
3. Expands number of instructions from 16 to 31. When high nibble of an
   instruction is 4'b1111, the low order nibble is decoded as extended
   instructions.
4. Phase counter is expanded from 1 bit to 4 bits, allows for up to 15 cycles
   to run a single instruction. Supports variable instruction cycles.
5. Supports logic instructions and bit shift/rotate instructions.

Block diagram of hummingbird CPU:

````                                   


         +-----------+-----------------------------------------+
         |           |             | |                         |
         o-------------------------+ |                         |
         |           |   +-------+ | |                         |
    +----v-----+     |   |ADDRESS| | |                         |
    | PC[11:0] |     |   |       | | |          +-----+        |
    +----+-----+     |   |  REG  <-+ |          |     |        |
         |           |   +---+---+ |D|      +---v---+ |        |
         |           +-------o     |a<------+ A REG | |        |
---------v-------------------v---  |t|      +---+---+ |        |
     Address bus 12b               |a|          | OP/A|        |
---------+----------------+------  | | OP/B +---v---+ | +----+ |
         |                |        |b+------> ALU   +-+->FLAG| |fetch[3:0]
         |                |        |u|      +-------+   +-+--+ |
    +----v------+  +------v-----+  |s|          +---------+----o
    | Program   |  |     RAM    |  | | sign +---+---+     +--+ |
    | Store 4x8 |  |    4Kx8b   |  |8<------+ FETCH <--phase | |fetch[7:4]
    +----+------+  +------^-----+  |b|  ext +-------+   | +--v-v----+
         |                |        | |          ^       +->  UCODE  +->control
         |                |        | |          |         +---------+  signals
---------v----------------v--------+ +----------+------------------------------
                                 Data bus 8b
-------------------------------------------------------------------------------

````

Hummingbird instruction set is 8 to 16 bit wide and their execution is
controlled by the phase signal. The phase signal counts from 0 to 15, and
phase 0 is always fetch phase. Thus an
instruction may takes from 1 to 15 cycles to complete. The last cycle of
an instruction execuation asserts /phrst to reset phase counter.

Some instructions (ADDI, CMPI, NORI) accept immediate operand. The immediate
operand occupies low nibble of an instruction and is sign extended to 8 bit
before sending to the ALU's B input. One exception is LH instruction, the
low nibble is shifted left 4 bits and zeros are appended to the low order
bits to form a 8 bit immediate operand.

There are total of 31 instructions:
| NAME | OP   | FLAGS | Description                                        |
|      |      |  c/z  |     (aaa: 12 bit address)                          |
|      |      |       |     (  i:  4 bit immediate)                        |
|      |      |       |     (-/-:  does not modify flags)                  |
|      |      |       |     (?/?:  flag modificationo is indeterministic)  |
|------|------|-------|----------------------------------------------------|
| LD   | 0aaa |  -/-  | AREG  <= [aaa] (Load from memory)                  |
| ST   | 1aaa |  -/-  | [aaa] <= AREG  (Store to memory)                   |
| ADD  | 2aaa |  c/z  | AREG  <= AREG + [aaa]                              |
| ADDI | 3i   |  c/z  | AREG  <= AREG + signext(i)                         |
| ADDIC| 4i   |  c/z  | AREG  <= AREG + signext(i) + cflag                 |
| SUB  | 5aaa |  c/z  | AREG  <= AREG - [aaa]                              |
| JMP  | 6aaa |  -/-  | PC    <= [aaa]                                     |
| JC   | 7aaa |  -/-  | PC    <= [aaa] if cflag else PC + 1                |
| CMP  | 8aaa |  c/z  | AREG + (-[aaa]), Compare with memory               |
| CMPI | 9i   |  c/z  | AREG + (-signext(i)), Compare with immediate       |
| NOR  | Aaaa |  c/z  | AREG  <= ~(AREG | [aaa])                           |
| NORI | Bi   |  c/z  | AREG  <= ~(AREG | signext(i))                      |
| AND  | Caaa |  c/z  | AREG  <= AREG & [aaa]                              |
| XOR  | Daaa |  c/z  | AREG  <= AREG ^ [aaa]                              |
| LIH  | Ei   |  -/-  | AREG  <= i << 4 | 0 Load to high nibble            |
| GT   | F0   |  c/z  | cflag = !cflag and !zflag                          |
| NOP  | F1   |  n/a  | no operation                                       |
| LT   | F2   |  n/a  | cflag = cflag and !zflag                           |
| EQ   | F3   |  n/a  | cflag = zflag                                      |
| NE   | F4   |  n/a  | cflag = !zflag                                     |
| NC   | F5   |  n/a  | cflag = !cflag                                     |
| SIGN | F6   |  x/x  | cflag = A[7], test sign bit, does not change A.    |
| NEG  | F7   |  x/x  | A=-A                                               |
| SHL  | F8   |  x/x  | A=A<<1                                             |
| SHR  | F9   |  x/x  | A=A>>1, zero fill bit 7                            |
| SHL4 | FA   |  x/x  | A=A<<4                                             |
| HLT  | FB   |  x/x  | no operation                                       |
| ROL  | FC   |  x/x  | A=A<<1 | A[7]                                      |
| ROR  | FD   |  x/x  | A=A>>1 | (A[0]<<8)                                 |
| SWAP | FE   |  x/x  | swap nibbles ab => ba                              |
| ASR  | FF   |  x/x  | arithmatic shift right by 1 bit                    |

ALU is expanded to 8 bit wide and has 2 input ports. Port A is always
connected to the accumulator (A REG) and port B comes from the data bus.
Two cascading 74181 4bit ALU ICs form the ALU.
