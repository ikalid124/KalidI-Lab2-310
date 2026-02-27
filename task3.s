.section .bss
ram: .space 256

.section .text
.global _start
_start:

    mov $ram, %rsi
    add $0x50, %rsi

    movb $0x00, (%rsi)
    inc %rsi
    movb $0x00, (%rsi)
    inc %rsi
    movb $0x00, (%rsi)
    inc %rsi
    movb $0x00, (%rsi)
    inc %rsi
    movb $0x00, (%rsi)
    inc %rsi
    movb $0x00, (%rsi)
    inc %rsi
    movb $0x00, (%rsi)
    inc %rsi
    movb $0x00, (%rsi)
    inc %rsi
    movb $0x00, (%rsi)

    mov $60, %rax
    xor %rdi, %rdi
    syscall
