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
    movl adr_fibo_mod_m, %ebx
    addl $4, %ebx
    movl $0, %eax

    boucle:
      addl $4, %ebx
      pushl %eax
      movl -8(%ebx), %eax
      addl -4(%ebx), %eax
      movl %eax,(%ebx)
      popl %eax

        addl $4, adr_fibo_mod_m
        pushl %ebx

        mod:
            subl %esi, %ebx
            cmp $0, %ebx
            jg mod              #dès qu'on passe dans les négatifs


        addl %esi, %ebx    # on rajoute m pour avoir le mod

        popl %ebx
        inc %eax 
        loop boucle
    ###

        popl  %ebx
        popl  %ebp 
        ret
