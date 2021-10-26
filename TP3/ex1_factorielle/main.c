#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int factorielle_s_iter(unsigned int n);
int factorielle_s_rec(unsigned int n);

int factorielle_c_iter(unsigned int n);
int factorielle_c_rec(unsigned int n);

void afficher(char A, char B);

int main(int argc, char** argv) {

   int nombre_valeurs = 10;

   printf("Approche iterative ASM\n");
   for(int i=0; i<=nombre_valeurs; i++){
      int factorielle = factorielle_s_iter(i);
      printf("Fact(%d) = %d\n", i, factorielle);
   }

   printf("Approche iterative C\n");
   for(int i=0; i<=nombre_valeurs; i++){
      unsigned int factorielle = factorielle_c_iter(i);
      printf("Fact(%d) = %d\n", i, factorielle);
   }

   // Decommentez cette partie lorsque vous avez implemente la version recursive

   // printf("Approche recursive ASM\n");
   // for(int i=0; i<=nombre_valeurs; i++){
   //    unsigned int factorielle = factorielle_s_rec(i);
   //    printf("Fact(%d) = %d\n", i, factorielle);
   // }

   // printf("Approche recursive C\n");
   // for(int i=0; i<=nombre_valeurs; i++){
   //    unsigned int factorielle = factorielle_c_rec(i);
   //    printf("Fact(%d) = %d\n", i, factorielle);
   // }

   return 0;
}

int factorielle_c_iter(unsigned int n){
   int factorielle = 1;
   for(int i = 1; i <= n; i++){
      factorielle *= i;
   }
   return factorielle;
}

int factorielle_c_rec(unsigned int n){
   if(n == 0){
      return 1;
   }else{
      return n*factorielle_c_rec(n-1);
   }
}

void afficher(char A, char B){
   printf("%c, %c", A, B);
}

