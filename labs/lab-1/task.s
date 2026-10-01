.data #initialize variables
a: .word 7
b: .word 5
c: .word 20
pos_msg: .asciz "Positive result: "
neg_msg: .asciz "Negative result: "
.text

main:
	
	#load variables
	lw t0, a
	lw t1, b
	lw t2, c
	
	add t3, t0, t1 #(a + b)
	slli t5, t3, 3 #(a + b)*8
	sub t6, t5, t2 #(a + b)*8 - c
	mv a0, t6 #move result to a0
    bgt t6, x0, positive
    blt t6, x0, negative
	
positive:
    
    la a0, pos_msg
    li a7, 4
    ecall
    
    mv a0, t6
    li a7, 1
    ecall
    
    li a7, 10 #exit program
    ecall
    
negative:

    la a0, neg_msg
    li a7, 4
    ecall
    
    mv a0, t6
    li a7, 1
    ecall
    
    li a7, 10 #exit program
    ecall