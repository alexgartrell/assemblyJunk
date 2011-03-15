.globl _atomic_add

_atomic_add:
#if __LP64__
        xadd %rsi, (%rdi)
        mov %rsi, %rax
#else        
        movl 0x4(%esp), %edx
        movl 0x8(%esp), %eax
        xadd %eax, (%edx)
#endif
        ret
