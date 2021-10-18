.text
.globl fibo_mod_p_q_mul

fibo_mod_p_q_mul:
movl 4(%esp),%edi           #p
movl 8(%esp),%esi           #q

push %ebp
movl %esp,%ebp
push %ebx 
     
###
#votre programme ici
###             

popl  %ebx
popl  %ebp  
ret

