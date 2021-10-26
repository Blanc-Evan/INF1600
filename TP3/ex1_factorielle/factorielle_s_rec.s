.text
.globl factorielle_s_rec
.globl afficher
factorielle_s_rec:
   pushl  %ebp
   movl   %esp, %ebp
   pushl %ebx
   movl 8(%esp),%ecx

# DEBUT COMPLETION
   cmpl $0, %ecx
   movl $1, %eax
   jmp Retour

   dec %ecx    
   pushl %ecx
   call factorielle_s_rec 
   popl %ecx
   mul %ecx

# FIN COMPLETION   
   
# NE RIEN MODIFIER APRES CETTE LIGNE
Retour:
   pop %ebx
   leave
   ret

