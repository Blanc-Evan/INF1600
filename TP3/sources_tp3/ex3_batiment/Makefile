CXX=g++
CFLAGS=-g -m32 -Wall
LDFLAGS=-lm
RM=rm -f
TARGET=batiment
OBJECTS=main.o batiment.o calculerSurfaceSolAsm.s calculerPrixAsm.s

.PHONY: clean

.cpp.o:
	$(CXX) $(CFLAGS) -c -o $@ $<

all: batiment

$(TARGET): $(OBJECTS)
	$(CXX) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	$(RM) *.o $(TARGET) 
