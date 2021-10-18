.data
.globl adr_v3
adr_v3:
   .int 0,1

.text
.globl fibo_mod_m_v3

fibo_mod_m_v3:
movl 4(%esp), %edi           # n : max index of fibo
movl 8(%esp), %esi           # m : base modulo

push %ebp
movl %esp,%ebp
push %ebx      
             
###
#votre programme ici
###

popl  %ebx
popl  %ebp                    
ret



   

