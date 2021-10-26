.data
.globl adr_pisano_m
adr_pisano_m:
   .int 0,1,1,2,3,0,3,3,1,4,0,4,4,3,2,0,2,2,4,1                 # 2eme  sequence
   # .int 0,1,1,2,3,5,2,1,3,4,1,5,0,5,5,4,3,1,4,5,3,2,5,1                   # 1ere  sequence

.text
.globl fibo_mod_zero

fibo_mod_zero:
movl 4(%esp), %esi           #periode de pisano de m (pisano(m))

push %ebp
movl %esp, %ebp
push %ebx      

###
#votre programme ici
movl $0, %eax

boucle:
   movl %esi, %ecx

   cmpl $0, $adr_pisano_m
   je increment

loop boucle
jmp fin

increment:
   inc %eax

fin:

###

popl  %ebx
popl  %ebp 
ret
