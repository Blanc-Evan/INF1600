#include <stdio.h>
#include<stdint.h>

extern int32_t fibo_mod_p_q(int32_t a,int32_t b);
extern int32_t fibo_mod_p_q_mul(int32_t a,int32_t b);

int main(void) {
   int p = 5;  
   int q = 4;  
   
   fibo_mod_p_q(p,q);
   printf("Pisano(%d x %d) = %d\n", p, q, fibo_mod_p_q(p, q));
      
   // fibo_mod_p_q_mul(p, q);
   // printf("Pisano(%d x %d) = %d\n", p, q, fibo_mod_p_q_mul(p, q));
         
   return 0;
}
