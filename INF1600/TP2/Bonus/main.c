#include <stdio.h>
#include<stdint.h>

extern int32_t lucas(int32_t a, int32_t b);

int main(void) {
   int n = 200; // n : indice de lucas
   int m = 6;  // m : base modulo
   printf("Pisano(%d) of lucas = %d\n", m, lucas(n,m));
   return 0;
}
