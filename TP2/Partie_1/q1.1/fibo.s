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
   movl adr_fibo, %eax
   movl $0, %eax
   addl $4, %eax
   movl $1, %eax

   boucle:
      addl $4, %eax
      movl -8(%eax), %eax
      addl -4(%eax), %eax

      addl $4, adr_fibo 
      movl %eax, adr_fibo

      loop boucle

   ###

   pop %ebx
   pop %ebp
   ret



