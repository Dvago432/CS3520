.data #initialize variables
a: .word 7
b: .word 5
c: .word 20
.text

main:
	
	#load variables
	lw t0, a
	lw t1, b
	lw t2, c
	li t4, 8
	
	add t3, t0, t1 #(a + b)
	mul t5, t3, t4 #(a + b)*8
	sub t6, t5, t2 #(a + b)*8 - c
	mv a0, t6 #move result to a0
	addi a7, zero, 1 #code to print integer
	ecall
	
	addi a7, zero, 10 #code to exit
	ecall