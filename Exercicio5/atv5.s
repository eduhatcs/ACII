main: 
    addi t0, zero, 4
    ecall

    mv a1, a0

    addi t1, zero, 4
    ecall

    xor a0
    , a0, a1

    addi t0, zero, 1
    ecall