.data

.text
.globl hanoi_ASM_rec
.globl move
.globl afficher

hanoi_ASM_rec:
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

