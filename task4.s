.section .bss
ram: .space 256

.section .text
.global _start
_start:

    mov $1, %al      # AL = 1
    add $2, %al      # +2
    add $3, %al      # +3
    add $4, %al      # +4
    add $5, %al      # +5
    add $6, %al      # +6
    add $7, %al      # +7
    add $8, %al      # +8
    add $9, %al      # +9
    add $10, %al     # +10

    movb %al, ram+0x50   # store result (55 decimal = 0x37)

    mov $60, %rax
    xor %rdi, %rdi
    syscall
    