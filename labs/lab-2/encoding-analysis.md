## 32-bit encoding for j and b-type instructions

- j: 11111111000111111111000001101111
- b: 00000000000011100000101001100011

## Splitting encodings into fields

- b:  
31  | 30    25 |    24   20  |  19   15  |  14   12 |11    8|  7    | 6    0
-----------------------------------------------------------------------------
  0     |  000000  |  00000  |  1110   |  000   | 1010    |  0      | 1100011
----------------------------------------------------------------------------
imm[12] | imm[10:5]|   rs2   |   rs1   | funct3 | imm[4:1]| imm[11] | opcode

- Format: B-type(beq)

- j:
 31  | 30      21 |  20  | 19    12 | 11    7 | 6      0
─────┼────────────┼─
  1      | 1111111000 |      1   | 11111111    |  00000  | 1101111
-----------------------------------------------------------------
imm[20]  |  imm[10:1] | imm[11]  | imm[19:12]  |   rd    | opcode            

- Format: J-type(jal)

## Why immediate is stored in scattered pieces: 

- This is becausethe designers of instruction formats arranged bits so that opcode, funct3 and rd fields sit in the same position across all formats, so immediates are split to occupy space that is left