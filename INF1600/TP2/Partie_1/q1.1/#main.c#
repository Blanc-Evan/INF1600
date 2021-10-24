#include <stdio.h>
#include <stdint.h>

extern int32_t fibo(int32_t a) ;
extern int32_t lis_fibo(int32_t a);

int main(void) {
   int n = 25;      // n valeurs de fibo
   int indice = 0;
   fibo(n);
   for (int i=0; i<=n*4; i=i+4){
      printf("fibo(%d) = %d\n", indice, lis_fibo(i));
      indice = indice+1;
   }
   return 0;
}
