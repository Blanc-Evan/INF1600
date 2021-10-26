.data
.globl adr_pisano
adr_pisano:
   .int 0,1

.text
.globl fibo_pisano_m

fibo_pisano_m:
movl 4(%esp), %edi           # n : indice de fibo
movl 8(%esp), %esi           # m : base modulo

push %ebp
movl %esp, %ebp
push %ebx      

###
#votre programme ici

movl %edi, %ecx

movl $0, %ebx
addl $4, %ebx
movl $1, %ebx

boucle:
    movl %edi, %ecx
    leal adr_fibo_mod_m, %ebx
    movl (%ebx), %eax
    addl $8, %eax
    movl $0, (%edx)
    addl $4 ,%edx
    movl $1,(%edx)
    addl $4 ,%edx
    boucle:

        movl -8(%edx), %ebx
        addl -4(%edx), %ebx
        movl %ebx,(%edx)
        addl $4, %edx

        pushl %edx
        pushl %eax
        movl -4(%edx), %eax
        div %esi
        popl %eax
        movl %edx, %eax
        popl %edx

       test:
          cmpl $0, -4(%eax)
          je if2

    addl $4, %eax
    loop boucle

jmp fin

if2:
   cmpl $1, (%eax)
   je fin
   loop boucle

fin:
   subl %ecx, %edi
   subl $2, %edi
   movl %edi, %eax
   popl  %ebx
   popl  %ebp   
   ret
###

popl  %ebx
popl  %ebp         
ret

