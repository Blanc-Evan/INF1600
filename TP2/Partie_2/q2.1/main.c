#include <stdio.h>
#include<stdint.h>

extern int32_t fibo_mod_zero(int32_t a);

int main(void) {
   // Tester la premiere sequence
   int m = 6;           // m : base modulo
   int pisano_m_1ere_seq = 24;
   printf("Number of zeros of Pisano(%d) = %d\n", m, fibo_mod_zero(pisano_m_1ere_seq));
   
   // Tester la seconde sequence
   // int m = 5;         // m : base modulo
   // int pisano_m_2eme_seq = 20;
   // printf("Number of zeros of Pisano(%d) = %d\n", m, fibo_mod_zero(pisano_m_2eme_seq));
   return 0;
}
