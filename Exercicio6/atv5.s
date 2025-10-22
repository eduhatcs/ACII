.text
.globl main
main:
    addi t0, zero, 4
    ecall
    mv s0, a0
    addi t1, zero, 65
    addi t2, zero, 90
    addi t3, zero, 97
    addi t4, zero, 122
    blt s0, t1, imprime_original
    bgt s0, t2, check_minuscula
    addi a0, s0, 32
    j imprimir
check_minuscula:
    blt s0, t3, imprime_original
    bgt s0, t4, imprime_original
    addi a0, s0, -32
    j imprimir
imprime_original:
    mv a0, s0
imprimir:
    addi t0, zero, 2
    ecall
fim_programa:
    j fim_programa