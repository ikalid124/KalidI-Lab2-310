.section .text
.global task2_run
.extern ram

task2_run:
    lea ram+0x50(%rip), %rsi   # RSI = &ram[0x50]

    movb $0xFF, (%rsi)
    inc %rsi
    movb $0xFF, (%rsi)
    inc %rsi
    movb $0xFF, (%rsi)
    inc %rsi
    movb $0xFF, (%rsi)
    inc %rsi
    movb $0xFF, (%rsi)
    inc %rsi
    movb $0xFF, (%rsi)
    inc %rsi
    movb $0xFF, (%rsi)
    inc %rsi
    movb $0xFF, (%rsi)
    inc %rsi
    movb $0xFF, (%rsi)

    ret
    