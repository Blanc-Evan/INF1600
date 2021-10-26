CXX=g++
CFLAGS=-g -m32 -Wall
LDFLAGS=-lm
RM=rm -f
TARGET=immeuble
OBJECTS=main.o batiment.o immeuble.o calculerPrixAsmBatiment.s calculerPrixAsmImmeuble.s calculerSurfaceSolAsmBatiment.s

.PHONY: clean

.cpp.o:
	$(CXX) $(CFLAGS) -c -o $@ $<

all: immeuble

$(TARGET): $(OBJECTS)
	$(CXX) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	$(RM) *.o $(TARGET) 
