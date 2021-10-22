.data
.globl adr_fibo_mod_m
adr_fibo_mod_m:
   .int 0,1

.text
.globl fibo_mod_m_div

fibo_mod_m_div:
   movl 4(%esp), %edi           # n : indice de fibo
   movl 8(%esp), %esi           # m : base modulo

   push %ebp
   movl %esp, %ebp
   push %ebx 

   ###
   #votre programme ici
   movl %edi, %ecx
   movl $0, %eax
   addl $4, %eax
   movl $1, %eax

   boucle:
      addl $4, %eax
      movl -8(%eax), %eax
      addl -4(%eax), %eax

      addl $4, adr_fibo_mod_m
      pushl %eax
      div %esi, %eax
      popl %eax
      movl %edx, adr_fibo_mod_m

      loop boucle

   ###

   popl  %ebx
   popl  %ebp                    
   ret



      

