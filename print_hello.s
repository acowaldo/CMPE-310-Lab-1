.section .data
msg:    .ascii "Hello, world\n"
len = . - msg

.section .text
.global _start
_start:
    mov $1, %rax     #write
    mov $1, %rdi    #std out
    mov $msg, %rsi  #buf
    mov $len, %rdx  #len
    syscall

    mov $60, %rax #exit
    mov $0, %rdi #status
    syscall
    