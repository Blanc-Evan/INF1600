#include "batiment.h"

int Batiment::calculerSurfaceSol(){
    return nombreDetages * superficie;
}

int Batiment::calculerPrix(int prixMetreCarreAvantCrise){

    int prix = 0;

    switch(this->typeLieu){
        case 0:
            prix = 4 * prixMetreCarreAvantCrise * this->calculerSurfaceSol();
            break;
        case 1:
            prix = 2 * prixMetreCarreAvantCrise * this->calculerSurfaceSol();
            break;
        case 2:
            prix = prixMetreCarreAvantCrise * this->calculerSurfaceSol();
            break;
        default:
            std::cout << "Type de lieu non reconnu." << std::endl;
            break;
    }

    return prix;
}

void Batiment::saisie(){
    std::cout << "Nombre d'etages: " << std::endl;
    std::cin >> this->nombreDetages;

    std::cout << "Superficie: " << std::endl;
    std::cin >> this->superficie;

    std::cout << "Type de lieu (Ville = 0, Campagne = 1, Zone Industrielle = 2):" << std::endl;
    std::cin >> this->typeLieu;

    while(typeLieu > 2 || typeLieu < 0){
        std::cout << "Type de lieu incorrect ! (Ville = 0, Campagne = 1, Zone Industrielle = 2):" << std::endl;
        std::cin >> this->typeLieu;
    }
}