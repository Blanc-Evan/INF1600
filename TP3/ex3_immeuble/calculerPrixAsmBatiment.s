.data
.text
.globl	_ZN8Batiment15calculerPrixAsmEi

_ZN8Batiment15calculerPrixAsmEi:
        push %ebp                            /* sauver le pointeur ebp */
        mov %esp, %ebp                       /* ebp recoit esp */
        
        # DEBUT COMPLETION
        # FIN COMPLETION

        # NE RIEN MODIFIER APRES CETTE LIGNE
    Fin:
        leave                               /* recuperer ebp et esp */
        ret          
    
