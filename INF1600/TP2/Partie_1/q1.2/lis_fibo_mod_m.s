.text
.globl lis_fibo_mod_m

lis_fibo_mod_m:
   movl 4(%esp),%eax    
   leal adr_fibo_mod_m,%ecx        
   addl %ecx,%eax      
   movl (%eax),%eax    
   ret
