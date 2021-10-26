#ifndef IMMEUBLE_H
#define IMMEUBLE_H

#include "batiment.h"

class Immeuble : public Batiment {
    private:
        int typesAppartements[4];
    public:
        virtual ~Immeuble();
        virtual void saisie();
        virtual int calculerPrix(int prixMetreCarreAvantCrise);
        virtual int calculerPrixAsm(int prixMetreCarreAvantCrise);
};

#endif