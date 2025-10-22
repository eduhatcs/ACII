.text
.globl main

main:
    addi t0, zero, 4
    ecall

    mv a2, a0

    addi a1, a2, -32

    addi t0, zero, 2
    ecall
    