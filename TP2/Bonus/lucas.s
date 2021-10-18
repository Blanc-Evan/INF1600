.data
.globl adr_lucas
adr_lucas:
   .int 0,1

.text
.globl lucas

lucas:
movl 4(%esp), %edi           # n : indice de lucas
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
