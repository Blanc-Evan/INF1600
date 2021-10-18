#include <stdio.h>
#include<stdint.h>

extern int32_t fibo_grand(int32_t a,int32_t b,int32_t c);

int main(void) {
   int n = 2019;  // n : indice de fibo  
   int m = 5;    // m :  base modulo     
   int p = 20;   // p : periode de pisano de m (pisano(m))   
   printf("Fibo(%d) mod %d = %d\n", n, m, fibo_grand(n, m, p));
   return 0;
}
