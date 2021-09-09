#include <math.h>
#include <stdio.h>

int main(int argc, char const *argv[]) // PGCD
{
    //Question 1
    int nb = 0;
    int nb2 = 0;
    int pgcd = 1;
    printf("Entrer un nombre \n");
    scanf("%d", &nb);
    printf("Entrer un deuxieme nombre \n");
    scanf("%d", &nb2);

    if (nb == nb2) pgcd = nb;

    else if (nb2 < nb){   //De cette facon, nb sera toujours le plus petit
        int temp = nb2;
        nb2 = nb;
        nb = temp;
    } 

    if (nb2 % nb == 0) pgcd = nb;

    else for (size_t i = (int)sqrt(nb); i > 0; i--) {
        if(nb2 % i == 0) pgcd = i; break;
    }

    printf("Le PGCD est : %d \n", pgcd);

    return 0;
}
