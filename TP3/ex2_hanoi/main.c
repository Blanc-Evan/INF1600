#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void hanoi_ASM_rec(int numberOfDisk, char from, char helper, char target);
void hanoi_c(int numberOfDisk, char from, char helper, char target);
void afficher(int valeur);

int main(){
    printf("Hanoi en C recursif: \n");
    hanoi_c(4, 'A', 'B', 'C');
    printf("=============== \n");
    printf("Hanoi en ASM recursif: \n");
    hanoi_ASM_rec(4, 'A', 'B', 'C');
    return 0;
}

void move(char from, char to){
    printf("Deplacement d'un disque de %c vers %c. \n", from, to);
}

void hanoi_c(int numberOfDisk, char from, char helper, char target){
    if(numberOfDisk != 0){
        hanoi_c(numberOfDisk - 1, from, target, helper);
        move(from, target);
        hanoi_c(numberOfDisk - 1, helper, from, target);
    }
}

void afficher(int valeur){
    printf("Valeur: %d", valeur);
}