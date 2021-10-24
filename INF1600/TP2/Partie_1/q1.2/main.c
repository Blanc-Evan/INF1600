#include <stdio.h>
#include<stdint.h>

extern int32_t fibo_mod_m_div(int32_t a,int32_t b);
extern int32_t fibo_mod_m(int32_t a,int32_t b);
extern int32_t lis_fibo_mod_m(int32_t a);

int main(void){
   int n = 25;  // n : indice de fibo
   int m = 5;  // m : base modulo
   //fibo_mod_m(n,m);
   fibo_mod_m_div(n,m);
   int indice = 0;
   for (int i=0; i<=n*4; i=i+4){
      printf("Fibo(%d) mod %d = %d\n",indice,m,lis_fibo_mod_m(i));
      indice=indice+1;
   }
   return 0;
}
