.text
        
        .globl _main
        .globl main
        
_main:
        pushq %rbp
        movq %rsp, %rbp
        subq $0x10, %rsp 

        call main

        movq %rax, %rdi
        call _exit
        
main:
        pushq %rbp
        movq %rsp, %rbp
        subq $0x20, %rsp

        lea msg(%rip), %rdi
        callq _puts

        lea omsg(%rip), %rdi
        callq _puts

        movq $0, %rax
        
        leave
        ret
        
.data
        
msg:    .asciz "Hello, World!"
omsg:   .asciz "Goodbye, Cruel World!"