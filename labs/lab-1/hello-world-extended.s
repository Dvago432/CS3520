.data           # declare and initialize variables
hello:  .asciz "Hello world!" # string
msg: .asciz "Hello assembly!"

  .text         # code starts here
main:           # label marking the entry point of the program
  la a0, hello  # load the address of hello into a0 (1st argument)
  addi a7, zero, 4     # code to print the string at the address a0
  ecall         # make the system call

  la a0, msg  # load the address of hello into a0 (1st argument)
  addi a7, zero, 4     # code to print the string at the address a0
  ecall  
  
  #extending for arithmetic
  li t0, 1
  li t2, 2
  add a0, t0, t2 #add 1 and 2
  
  addi a7, zero, 1
  ecall

  addi a7, zero, 10    # code to exit
  ecall         # make the system call
