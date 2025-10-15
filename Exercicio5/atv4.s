main:
    add s2, zero, zero
    add s1, zero, zero

loop:
    addi t0, zero, 4
    ecall

    beqz a0, fim_loop

    andi t1, a0, 1
    beqz t1, par

impar:
    add s1, s1, a0
    j loop

par:
    add s2, s2, a0
    j loop

fim_loop:
    sub a0, s1, s2
    addi t0, zero, 1
    ecall

fim_programa:
    j fim

# 5+5 = 10
# 2+2 = 4
# 10 - 4 = 6