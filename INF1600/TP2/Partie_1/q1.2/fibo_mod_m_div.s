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
    movl adr_fibo_m_div, %ebx
    addl $4, %ebx
    movl $0, %eax

   boucle:
      addl $4, %ebx
      pushl %eax
      movl -8(%ebx), %eax
      addl -4(%ebx), %eax
      movl %eax,(%ebx)
      popl %eax

      pushl %ebx
      pushl %eax
      movl %esi, %eax
      div %ebx
      popl %eax
      popl %ebx
      movl %edx, %ebx

      inc %eax
      loop boucle

   ###

   popl  %ebx
   popl  %ebp                    
   ret



      

