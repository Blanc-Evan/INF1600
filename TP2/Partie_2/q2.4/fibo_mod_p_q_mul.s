.text
.globl fibo_mod_p_q_mul

fibo_mod_p_q_mul:
movl 4(%esp),%edi           #p
movl 8(%esp),%esi           #q

push %ebp
movl %esp,%ebp
push %ebx 
movl $0,%eax
l1:
    pushl %eax
    movl %edi ,%eax 
    mul %esi 
    movl %eax,%ebx
    movl $0,(%ecx)
    movl $1, 4(%ecx)
    movl (%ecx),%eax
    addl 4(%ecx),%eax
    div %ebx
    movl %edx,8(%ecx)
    popl %eax

    cmpl $0, 4(%ecx)
    je test2

    addl $4, %ecx
    addl $1 ,%eax
    jmp l1

fin:
    popl  %ebx
    popl  %ebp   
    ret

test2:
    cmpl $1, 8(%ecx)
    je fin
###             

popl  %ebx
popl  %ebp  
ret

