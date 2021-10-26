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
   movl %edi, %ecx
   movl $adr_v3, %ebx
   movl $0, %eax
   movl $adr_v3, %ebx
   addl $4, %ebx

   boucle:
      addl $4, %ebx
      pushl %eax
      movl -8(%ebx), %eax
      addl -4(%ebx), %eax
      movl %eax,(%ebx)
      popl %eax


      div %esi
      movl %edx, (%ebx)
      inc %eax
      loop boucle

###

popl  %ebx
popl  %ebp                    
ret



   

