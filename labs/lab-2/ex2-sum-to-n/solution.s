.data
    
    n: .word 5
    sum: .asciz "Sum to n: "
.text

#initialize variables
main:

    la t0, n
    lw t1, 0(t0)
    la t2, sum
    jal ra, sum_to_n

sum_to_n:

    #save register for sum
    li t3, 0 #sum
    li t4, 1 #i
    li t5, 1

loop:

    bgt t4, t1, done #done adding
    add t3, t3, t4 #sum = sum + i
    addi t4, t4, 1 #i++

repeat:

    beq x0, x0, loop #return to loop

done:

    addi sp, sp, 4
    mv a0, t2
    li a7, 4
    ecall

    mv a0, t3
    li a7, 1
    ecall

    li a7, 10
    ecall