# Hummingbird 8-bit CPU instruction set
Hummingbird is a 8 bit 74xx IC based CPU. It is inspired by Nibbler 4 bit CPU.
Databus is extended to 8 bit and instruction bus is 12 bit. It is a
Von Neumann architecture. There
are a 4Kx8 program store and a 4Kx8 RAM. The content of
the program store is copied to RAM at power-on and control
flow transferred to the first address of RAM to start. Program store is disabled
after control transfers to the RAM.


````                                   
                     +-----------------------------------------+
    +----------+     |   +-------+                             |
    | PC[11:0] |     |   |ADDRESS| | |          +-----+        |
    +----^-----+     |   |  REG  <-+            |     |        |
         |           |   +---+---+ | |      +---v---+ |        |
         |           +-------o     | <------+ A REG | |        |
---------v-------------------v---  | |      +---+---+ |        |
     Address bus 12b               | |          | OP/A|        |
---------+----------------+------  | | OP/B +---v---+ | +----+ |
         |                |        | +------> ALU   +-+->FLAG| |fetch[4:7]
         |                |        | |      +-------+   +-+--+ |
    +----v------+  +------v-----+  | |          +---------+----o
    | Program   |  |     RAM    |  | | sign +---+---+     +--+ |
    | Store 4x8 |  |    4Kx8b   |  | <------+ FETCH <--phase | |fetch[0:3]
    +----+------+  +------^-----+  | |  ext +-------+   | +--v-v----+
         |                |        | |          ^       +->  UCODE  +->control
         |                |        | |          |         +---------+  signals
---------v----------------v--------+ +----------+------------------------------
                                 Data bus 8b
-------------------------------------------------------------------------------

````

Hummingbird instruction set is 8 to 16 bit wide and their execution is
controlled by the phase signal. The phase signal counts from 0 to 3, thus an
instruction takes from 2 to 4 cycles to execute.

There are 2 flag registers, carry-out and zero flag.
Arithmetic and logical operations may modify the flags.

There are total of 31 instructions:
| NAME | OP   | FLAGS | Description                                        |
|------|------|-------|----------------------------------------------------|
| LD   | 1aaa |  n/a  | AREG  <= [aaa] (Load from memory)                  |
| ST   | 2aaa |  n/a  | [aaa] <= AREG  (Store to memory)                   |
| ADD  | 3aaa |  c/z  | AREG  <= AREG + [aaa] + Carryin                    |
| ADDI | 4i   |  c/z  | AREG  <= AREG + signext(i) + Carryin               |
| SUB  | 5aaa |  c/z  | AREG  <= AREG + ~[aaa] + Carryin (subtraction)     |
| JMP  | 6aaa |  n/a  | PC    <= [aaa]                                     |
| JC   | 7aaa |  n/a  | PC    <= [aaa] if Carryin else PC + 1              |
| CMP  | 8aaa |  c/z  | AREG + (~[aaa] + 1), Compare with memory           |
| CMPI | 9i   |  c/z  | AREG + (~signext(i) + 1), Compare with immediate   |
| NOR  | Aaaa |  0/z  | AREG  <= ~(AREG | [aaa])                           |
| NORI | Bi   |  0/z  | AREG  <= ~(AREG | signext(i))                      |
| AND  | Caaa |  0/z  | AREG  <= AREG & [aaa]                              |
| XOR  | Daaa |  0/z  | AREG  <= AREG ^ [aaa]                              |
| XORI | Eaaa |  0/z  | AREG  <= AREG ^ signext(i)                         | 
| LIH  | Fi   |  n/a  | AREG  <= i << 4 Load to high nibble                |
| NOP  | 00   |  n/a  | Nop                                                |
| GT   | 01   |  n/a  | Carryin = (!zero and  Carryin)                     |
| GE   | 02   |  n/a  | Carryin = (zero  or   Carryin)                     |
| LT   | 03   |  n/a  | Carryin = (!zero and !Carryin)                     |
| LE   | 04   |  n/a  | Carryin = (zero  or  !Carryin)                     |
| EQ   | 05   |  n/a  | Carryin = zero                                     |
| SC   | 06   |  n/a  | Carryin = 1 set carry                              |
| CC   | 07   |  n/a  | Carryin = 0 clear carry                            |
| NEG  | 08   |  0/z  | A=-A                                               |
| SHL  | 09   |  0/z  | A=A<<1                                             |
| ROL  | 0A   |  0/z  | A=A rotate left 1 (with carry bit)                 |
| SHL2 | 0B   |  0/z  | A=A<<2                                             |
| ROL2 | 0C   |  0/z  | A=A rotate left 2 (with carry bit)                 |
| SHL3 | 0D   |  0/z  | A=A<<3                                             |
| ROL3 | 0E   |  0/z  | A=A rotate left 3 (with carry bit)                 |
| LD1  | 0F   |  0/0  | A=1 load 1                                         |
|------|------|-------|----------------------------------------------------|

ALU is 8 bit wide and has 2 input port, port A is always connected to the
accumulator (A REG) and port B comes from the data bus. ALU is composed
of 2 cascading 74181 4bit ALU ICs.

