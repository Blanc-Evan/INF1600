#include "immeuble.h"

Immeuble::~Immeuble(){}

void Immeuble::saisie(){
    Batiment::saisie();
    std::cout << "Nombre de 1 et 1/2 ?" << std::endl;
    std::cin >> this->typesAppartements[0];

    std::cout << "Nombre de 2 et 1/2 ?" << std::endl;
    std::cin >> this->typesAppartements[1];

    std::cout << "Nombre de 3 et 1/2 ?" << std::endl;
    std::cin >> this->typesAppartements[2];

    std::cout << "Nombre de 4 et 1/2 ?" << std::endl;
    std::cin >> this->typesAppartements[3];
}

int Immeuble::calculerPrix(int prixMetreCarreAvantCrise){

    int prixTotal = Batiment::calculerPrix(prixMetreCarreAvantCrise);

    if(this->typesAppartements[0] >= 5){
        prixTotal += (this->typesAppartements[0])*prixMetreCarreAvantCrise;
    }

    if(this->typesAppartements[1] >= 3){
        prixTotal += 2*(this->typesAppartements[1])*prixMetreCarreAvantCrise;
    }   

    if(this->typesAppartements[2] >= 3){
        prixTotal += 3*(this->typesAppartements[2])*prixMetreCarreAvantCrise;
    }

    if(this->typesAppartements[3] >= 3){
        prixTotal += 4*(this->typesAppartements[3])*prixMetreCarreAvantCrise;
    }

    return prixTotal;
}