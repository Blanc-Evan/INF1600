.data
.globl adr_fibo
adr_fibo:
   .int 0,1

.text
.globl fibo

fibo:
   movl 4(%esp),%edi           #Valeur de n

   push %ebp
   movl %esp,%ebp
   push %ebx      

   ###
   #votre programme ici
   movl %edi, %ecx
   leal adr_fibo, %ebx
   movl (%ebx), %edx
   addl $8, %ebx

   boucle:
      movl -8(%ebx), %edx
      addl -4(%ebx), %edx
      movl %edx,(%ebx)
      addl $4, %ebx
      loop boucle

   ###

   pop %ebx
   pop %ebp
   ret



