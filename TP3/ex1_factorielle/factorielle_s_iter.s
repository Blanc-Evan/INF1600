.text
.globl factorielle_s_iter
.globl afficher
factorielle_s_iter:
   pushl  %ebp
   movl   %esp, %ebp
   pushl %ebx
   movl $1,%eax
   movl 8(%ebp),%ecx
   cmpl $0, %ecx 
   je Retour

# DEBUT COMPLETION

L1:
mul %ecx 
loop L1
# FIN COMPLETION

# NE RIEN MODIFIER APRES CETTE LIGNE
Retour:
   pop %ebx
   leave
   ret