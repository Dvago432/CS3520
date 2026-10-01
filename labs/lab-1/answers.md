## Lab answers from step 4 to step 6

## Table from step 4

Instruction      | Format | opcode   | funct3/funct7 | rd, rs1, rs2        | Hex
---------------------------------------------------------------------------------------
add t3, t0, t1   | R      | 0110011  | 000, 0000000  | 11100, 00101, 00110 | 0x00628e33
----------------------------------------------------------------------------------------
li a7, 4         | I      | 0010011  | 000           | 1001, 00000         | 0x00400893
----------------------------------------------------------------------------------------
lw t0, a         | I      | 0000011  |  010          | 00101, 00101        | 0x10000297

## Answers to step 5

1. 0x00A00293 = 0000 0000 1010 0000 0000 0010 1001 0011

opcode = 0010011 = i type
rd = 00101 = x5
funct3 = 000
rs1 = 00000 = x0
imm[11:0] = 000000001010 = 10

full instruction = addi x5, x0, 10

2. 0x406283B3 = 0100 0000 0110 0010 1000 1011 0011

opcode = 0110011 = r type
funct7 = 0100000; funct3 = 000 (sub)
rs2 = 00110 = x6
rs1 = 00101 = x3
rd = 00111 = x7

full instruction = sub x7, x3, x6

3. 0x00329293 = 0000 0000 0011 0010 1001 0010 1001 0011

imm[11:0] = 0000 0000 0011 = 3
rs1 = 00101 = x5
funct3 = 001
rd = 00101 = x5
opcode = 0010011 = i type

full instruction = slli x5, x5, 3

## Answers to step 6

Program function: loads 'hello' from memory and displays contents ("Hello World!")

- Role of .data section: declaration and initialization of variables in memory

- Why a7 is loaded twice with different values: different values in a7 make different system calls; when a7 is loaded the first time with 4, it is a directive to print the string at address a0 after the system call. The second time it is loaded with 10 as a directive to cleanly exit the program.