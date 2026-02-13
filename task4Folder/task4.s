#Sum 1 + 2 + ... + N, N=10 

.section .bss
.globl ram
.lcomm ram, 256 #create 256 byte register

.section .text
.globl seriesSum

seriesSum: 
#assign index register to 0x50 (SEGMENT BASE)

    mov $0, %eax
    mov $1, %ebx
    movb $10, %ch 

mathLoop: 
    add %ebx, %eax
    inc %ebx
    dec %ch
    jnz mathLoop

    mov %eax, ram+0x50
    ret

.section .note.GNU-stack,"",@progbits
