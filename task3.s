.section .text
.global task3_run
.extern ram

task3_run:
    lea ram+0x50(%rip), %rsi   # RSI = &ram[0x50]

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

    ret
    