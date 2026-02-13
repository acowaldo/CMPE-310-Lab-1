#INDIRECT accessing

.section .bss
.globl ram
.lcomm ram, 256 #create 256 byte register

.section .text
.globl indirect_address

indirect_address: 
#assign index register to 0x50 (SEGMENT BASE)
    mov $0x50, %esi #make 0x50 an index value
    lea ram, %rdi #say ram is rdi
    add %esi, ram #increment ram by esi
    
    mov $0xFF, %ebx
    mov %ebx, ram(%esi)
    inc %esi
    mov %ebx, ram(%esi)
    inc %esi
    mov %ebx, ram(%esi)
    inc %esi
    mov %ebx, ram(%esi)
    inc %esi
    mov %ebx, ram(%esi)
    inc %esi
    mov %ebx, ram(%esi)
    inc %esi
    mov %ebx, ram(%esi)
    inc %esi
    mov %ebx, ram(%esi)
    inc %esi
    mov %ebx, ram(%esi)
    inc %esi

    
    ret 

loop: 
    mov %ebx, ram(%esi)
    inc %esi
    ret

.section .note.GNU-stack,"",@progbits
