#include <stdio.h>
#include<stdint.h>

extern int32_t fibo_pisano_m(int32_t a,int32_t b);

int main(void) {
   int n = 200;  // n : indice de fibo
   int m = 6;    // m : base modulo
   printf("Pisano(%d) = %d\n", m, fibo_pisano_m(n, m));
   return 0;
}
