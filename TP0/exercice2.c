#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
    // Question 1
    int taille = 0;
    printf("Entrer le nombre d'elements que doit contenir le tableau \n");
    scanf(" %d", &taille);

    if (taille < 2) taille = 2; //Dois toujours avoir au moins 2 cases d'avance (voir question 2)

    int* tab = calloc(taille, sizeof(int));

    //Question 2

    return 0;
}
