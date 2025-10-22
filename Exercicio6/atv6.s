.text
.globl main
main:
    addi t0, zero, 4
    ecall
    mv s0, a0
    addi t1, zero, 9
    bgt s0, t1, eh_letra
eh_digito:
    addi a0, s0, 48
    j imprimir_digito
eh_letra:
    addi a0, s0, 55
imprimir_digito:
    addi t0, zero, 2
    ecall
imprimir_h:
    addi a0, zero, 104
    addi t0, zero, 2
    ecall
fim_programa:
    j fim_programa