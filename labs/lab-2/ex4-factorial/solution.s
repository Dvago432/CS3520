.data

    n: .word 5
    msg: .asciz "Factorial: "

.text

main:

    la t0, n
    la t1, msg
    lw t2, 0(t0)
    li t3, 1
    jal ra, Factorial


Factorial:

    li a1, 0 #i
    addi sp, sp, -4
    sw s1, 0(sp)
    lw s1, n
    sub t5, t2, t3 #n - 1

    
loop:

    beq a1, t5, done
    sub t4, s1, t3 #n - 1
    mul t2, t2, t4 #n*(n - 1)
    mv s1, t4
    addi a1, a1, 1 #i++
    ble a1, t5, loop

done:

    addi sp, sp, 4 #release stack
    mv a0, t1
    li a7, 4
    ecall

    mv a0, t2
    li a7, 1
    ecall

    li a7, 10
    ecall

