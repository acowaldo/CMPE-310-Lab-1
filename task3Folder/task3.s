#CLEAR ram locations starting at 50H to 58H

.section .bss
.globl ram
.lcomm ram, 256 #create 256 byte register

.section .text
.globl clear_ram

clear_ram: 
#assign index register to 0x50 (SEGMENT BASE)
    mov $0x50, %esi #make 0x50 an index value
    lea ram, %rdi #say ram is rdi
    add %esi, ram #increment ram by esi
    mov $9, %ch #counter for loops to loop

    mov $0x00, %ebx


loop: 
    mov %ebx, ram(%esi)
    inc %esi
    dec %ch
    jnz loop

    ret

.section .note.GNU-stack,"",@progbits
