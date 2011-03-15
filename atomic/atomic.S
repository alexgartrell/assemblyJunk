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

.globl _atomic_xchg
_atomic_xchg:
#if __LP64__
        xchg %rsi, (%rdi)
        mov %rsi, %rax
#else        
        movl 0x4(%esp), %edx
        movl 0x8(%esp), %eax
        xchg %eax, (%edx)
#endif
        ret
