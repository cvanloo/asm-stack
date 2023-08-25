# Instructions:
# as -o bf.o bf.s
# ld -o bf bf.o
    .globl _start
    .text

_start:
    push $69

    mov $1, %rax
    mov $1, %rdi
    mov $msg, %rsi
    mov $msglen, %rdx
    syscall

    mov $60, %rax
    pop %rdi
    syscall

    .data

msg: .ascii "Hello, World\n"
msglen = . - msg
