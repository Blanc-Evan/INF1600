#include "batiment.h"
#include <vector>

void testBatiment(Batiment* b);

int main(){
    std::vector<Batiment*> batiments = {};

    Batiment Batiment_A;
    Batiment Batiment_B;
    Batiment Batiment_C;
    
    batiments.push_back(&Batiment_A);
    batiments.push_back(&Batiment_B);
    batiments.push_back(&Batiment_C);

    for(auto ptr_batiment : batiments){

        std::cout << "========================" << std::endl;

        ptr_batiment->saisie();

        int prixMetreCarreAvantCrise = 0;

        std::cout << "Prix metre carre avant la crise ?" << std::endl;
        std::cin >> prixMetreCarreAvantCrise;

        int surfaceCpp = ptr_batiment->calculerSurfaceSol();
        int surfaceAsm = ptr_batiment->calculerSurfaceSolAsm();

        if(surfaceCpp == surfaceAsm){
            std::cout << "calculerSurfaceSolAsm OK!" << std::endl;
        }else{
            std::cout << "calculerSurfaceSolAsm INVALIDE!" << std::endl;
            std::cout << "Surface obtenue: " << surfaceAsm << ". Surface attendue: " << surfaceCpp << "." << std::endl;
        }

        int prixBatimentCpp = ptr_batiment->calculerPrix(prixMetreCarreAvantCrise);
        int prixBatimentAsm = ptr_batiment->calculerPrixAsm(prixMetreCarreAvantCrise);

        if(prixBatimentCpp == prixBatimentAsm){
            std::cout << "calculerPrixAsm OK!" << std::endl;
        }else{
            std::cout << "calculerPrixAsm INVALIDE!" << std::endl;
            std::cout << "Prix obtenu: " << prixBatimentAsm << ". Prix attendu: " << prixBatimentCpp << "." << std::endl;
        }

        std::cout << "======================== \n" << std::endl;
    }

}