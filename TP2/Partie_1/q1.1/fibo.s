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
   movl adr_fibo, %ebx
   movl $0, %eax
   addl $4, %ebx

   boucle:
      addl $4, %ebx
      pushl %eax
      movl -8(%ebx), %eax
      addl -4(%ebx), %eax
      movl %eax,(%ebx)
      popl %eax


      inc %eax
      loop boucle

   ###

   pop %ebx
   pop %ebp
   ret



