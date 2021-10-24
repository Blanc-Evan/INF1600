.text
.globl lis_fibo

lis_fibo:
   movl 4(%esp),%eax 
   leal adr_fibo, %ecx 
   addl %ecx, %eax 
   movl (%eax), %eax 
   ret
