.text
.globl fibo_mod_m

fibo_mod_m:
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
