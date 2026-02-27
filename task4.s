.section .text
.global task4_run
.extern ram

task4_run:
    mov $1, %al      # AL = 1
    add $2, %al      # +2
    add $3, %al      # +3
    add $4, %al      # +4
    add $5, %al      # +5
    add $6, %al      # +6
    add $7, %al      # +7
    add $8, %al      # +8
    add $9, %al      # +9
    add $10, %al     # +10   => AL = 55 (0x37)

    movb %al, ram+0x50(%rip)   # store result into ram[0x50]
    ret
    