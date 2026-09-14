.data

    a: .word 4
    b: .word 8
    msg: .word "Greatest common divisor: "
.text

main:

    la t0, a
    la t1, b
    lw t2, 0(t0)
    lw t3, 0(t1)
    jal ra, gcd

gcd:

    beq t3, x0, done
    rem t4, t2, t3 #a%b
    mv t2, t3 #a = b
    mv t3, t4
    j gcd 

done:

    la a0, msg
    li a7, 4
    ecall

    mv a0, t2
    li a7, 1
    ecall