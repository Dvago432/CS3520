.data

    a: .word 2
    b: .word 5
    msg: .asciz "largest: "

.text

#load variables
main:

    la t0, a
    la t1, b
    la t2, msg
    lw t3, 0(t0)
    lw t4, 0(t1) #value of b
    jal ra, largest

largest:

    bge t3, t4, print_a_larger #print a larger
    blt t3, t4, Else #print b larger

print_a_larger:

    mv a0, t2
    li a7, 4 #print "largest: "
    ecall

    mv a0, t3
    li a7, 1
    ecall
    
    j done #jump to end

Else:

    mv a0, t2
    li a7, 4
    ecall

    mv a0, t4
    li a7, 1
    ecall

done:
    
    li a7, 10
    ecall    