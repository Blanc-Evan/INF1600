.data
.globl adr_fibo_mod_m
adr_fibo_mod_m:
   .int 0,1

.text
.globl fibo_mod_m_div

fibo_mod_m_div:
   movl 4(%esp), %edi           # n : indice de fibo
   movl 8(%esp), %esi           # m : base modulo

   push %ebp
   movl %esp, %ebp
   push %ebx 

   ###
   #votre programme ici
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
    addl $4, %eax
    loop boucle

   ###

   popl  %ebx
   popl  %ebp                    
   ret



      

