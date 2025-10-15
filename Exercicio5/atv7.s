main: 
    addi t0, zero, 4
    ecall

    mv a1, a0

    addi t1, zero, 32

    addi t2, zero, 1
    slli t2, t2, 31

loop:
    beqz t1, fim_programa

    and t3, a1, t2

    beqz t3, imprime_zero

imprime_um:
    addi a0, zero, 49
    addi t0, zero, 2
    ecall
    j prox

imprime_zero:
    addi a0, zero, 48
    addi t0, zero, 2
    ecall

prox:
    srli t2, t2, 1
    addi t1, t1, -1

    j loop

fim_programa: