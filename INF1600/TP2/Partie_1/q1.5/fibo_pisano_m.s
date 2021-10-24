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
   movl -4(%ebx), %eax
   addl (%ebx), %eax      
   addl $4, %ebx
   movl %eax, %ebx   #on se sert d'%ebx pour fibo

   div %esi
   addl $4, adr_pisano
   movl %edx, adr_pisano

   test:
      subl $4, adr_pisano
      cmpl $0, adr_pisano
      je if2
      addl $4, adr_pisano

loop boucle

jmp fin

if2:
   addl $4, adr_pisano
   cmpl $1, adr_pisano
   je fin
   loop boucle

fin:
   subl %ecx, %edi
   subl $2, %edi
   movl %edi, %eax
   ret
###

popl  %ebx
popl  %ebp         
ret
