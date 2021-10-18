.data
.globl adr
adr:
   .int 0,1

.text
.globl fibo_grand

fibo_grand:
movl 4(%esp),%eax           # n : indice de fibo
movl 8(%esp),%edi           # m : base modulo
movl 12(%esp),%esi          # p : periode de pisano de m (pisano(m))

push %ebp
movl %esp,%ebp
push %ebx

###
#votre programme ici
### 

popl  %ebx
popl  %ebp         
ret



   

