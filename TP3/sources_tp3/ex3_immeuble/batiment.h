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
        virtual ~Batiment();
        virtual int calculerSurfaceSol();
        virtual int calculerSurfaceSolAsm();

        virtual int calculerPrix(int prixMetreCarreAvantCrise);
        virtual int calculerPrixAsm(int prixMetreCarreAvantCrise);
        
        virtual void saisie();
};

#endif