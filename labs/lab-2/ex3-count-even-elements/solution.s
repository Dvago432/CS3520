.data

    array: .word 4, 8, 3, 2, 5, 7,8,12,100,1000000
    n: .word 10
    msg: .asciz "Number of even numbers: "

.text

main:

    la a0, array
    la a1, msg
    la t0, n
    lw t1, 0(t0)
    jal ra, count_even

count_even:

    li t2, 0 #i
    li t3, 0 #count

loop:

    bge t2, t1, done #done looping

    #load array element
    slli t5, t2, 2 #i*2
    add t6, a0, t5 #t7 = &array[i]
    lw t6, 0(t6)

    #find remainder
    srli a2, t6, 1 #first element/2
    slli a3, a2, 1 #quotient*2
    sub a3, t6, a3

    addi t2, t2, 1 #i++
    beq x0, a3, increment #if remainder == 0 increment count
    bne x0, a3, loop #keep looping if rem != 0

increment:

    addi t3, t3, 1 #increment count
    j loop

done:

    mv a0, a1
    li a7, 4
    ecall

    mv a0, t3 
    li a7, 1
    ecall

    li a7, 10
    ecall 