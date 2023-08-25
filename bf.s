    .globl asm_main
    .text

asm_main:
    push %rbp
    mov %rsp, %rbp

    push $69

    mov $1, %rax
    mov $1, %rdi
    mov $msg, %rsi
    mov $msglen, %rdx
    syscall

    pop %rax

    leave
    ret

    .data

msg: .ascii "Hello, World\n"
msglen = . - msg
