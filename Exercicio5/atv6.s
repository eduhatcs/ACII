main: 
    addi t0, zero, 4
    ecall

    mv a1, a0

loop:
    addi t0, zero, 4
    ecall

    beqz a0, fim_programa

    xor a0, a0, a1

    addi t0, zero, 1
    ecall

    j loop

fim_programa: