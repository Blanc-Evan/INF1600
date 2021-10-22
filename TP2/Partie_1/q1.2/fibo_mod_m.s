.data
.globl adr_fibo_mod_m
adr_fibo_mod_m:
   .int 0,1

.text
.globl fibo_mod_m

fibo_mod_m:
    movl 4(%esp), %edi           # n : indice de fibo
    movl 8(%esp), %esi           # m : base modulo

    push %ebp
    movl %esp, %ebp
    push %ebx 

    ###
    #votre programme ici
    movl %edi, %ecx
    movl adr_fibo_mod_m, %eax
    movl $0, %eax
    addl $4, %eax
    movl $1, %eax

    boucle:
        addl $4, %eax
        movl -8(%eax), %eax
        addl -4(%eax), %eax

        addl $4, adr_fibo_mod_m
        pushl %eax

        mod:
            subl %esi, %eax
            cmp $0, %eax
            jg mod              #dès qu'on passe dans les négatifs


        addl %esi, %eax     # on rajoute m pour avoir le mod
        movl %eax, adr_fibo_mod_m

        popl %eax

        loop boucle
    ###

        popl  %ebx
        popl  %ebp 
        ret
