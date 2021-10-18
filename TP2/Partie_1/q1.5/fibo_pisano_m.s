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
###             

popl  %ebx
popl  %ebp         
ret

