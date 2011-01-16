.text
        .globl _main
        .globl main
        
_main:
        pushl %ebp
        movl %esp, %ebp
        subl $0x8, %esp

        call main

        movl %eax, (%esp)
        call _exit

main:
        pushl %ebp
        movl %esp, %ebp
        subl $8, %esp

        movl $msg, (%esp)
        call _puts

        movl $omsg, (%esp)
        call _puts
        
        mov $0, %eax

        leave
        ret
        
.data
        
msg:    .asciz "Hello, World!"
omsg:   .asciz "Goodbye, Cruel World!"
