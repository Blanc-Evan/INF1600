CC=gcc
CFLAGS=-g -m32 -g -Wall
RM=rm -f
TARGET=factorielle
OBJECTS=main.o factorielle_s_iter.o factorielle_s_rec.o

.PHONY: clean

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

.s.o:
	$(CC) $(CFLAGS) -c -o $@ $<

all: factorielle

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) *.o $(TARGET)
