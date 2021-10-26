#ifndef BATIMENT_H
#define BATIMENT_H

#include <iostream>
#include <string>

class Batiment {
    private:
        int nombreDetages;
        int superficie;
        int typeLieu;
    public:
        int calculerSurfaceSol();
        int calculerSurfaceSolAsm();

        int calculerPrix(int prixMetreCarreAvantCrise);
        int calculerPrixAsm(int prixMetreCarreAvantCrise);
        
        void saisie();
};

#endif