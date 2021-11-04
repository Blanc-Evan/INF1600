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
   movl 8(%ebp), %eax   //nb
   movl 12(%ebp), %ebx  //from
   movl 16(%ebp), %ecx // helper
   movl 20(%ebp), %edx // target
   cmpb $0, %eax
   je Retour

   subl $1, %eax  // nb - 1
   
   pushl %ecx   //helper
   pushl %edx   //target
   pushl %ebx   //from
   pushl %eax   //nb
   call hanoi_ASM_rec

   popl %eax   //nb
   popl %ebx   //from
   popl %edx   //target
   popl %ecx   //helper

   pushl %edx
   pushl %ebx
   call move

   popl %ebx   //from
   popl %edx   //target


   pushl %edx   //target
   pushl %ebx   //from
   pushl %ecx   //helper
   pushl %eax   //nb
   call hanoi_ASM_rec

# FIN COMPLETION   
   
# NE RIEN MODIFIER APRES CETTE LIGNE
Retour:
   pop %ebx
   leave
   ret

