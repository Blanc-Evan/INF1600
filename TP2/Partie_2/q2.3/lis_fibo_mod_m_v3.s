.text
.globl lis_fibo_mod_m_v3

lis_fibo_mod_m_v3:
   movl 4(%esp),%eax    
   leal adr_v3,%ecx        
   addl %ecx,%eax      
   movl (%eax),%eax    
   ret
