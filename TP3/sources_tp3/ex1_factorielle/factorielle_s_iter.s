.text
.globl factorielle_s_iter
.globl afficher
factorielle_s_iter:
   pushl  %ebp
   movl   %esp, %ebp
   pushl %ebx
   
# DEBUT COMPLETION
# FIN COMPLETION

# NE RIEN MODIFIER APRES CETTE LIGNE
Retour:   
   pop %ebx
   leave
   ret

