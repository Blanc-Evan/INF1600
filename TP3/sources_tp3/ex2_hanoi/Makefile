# CXX=g++
# CFLAGS=-g -m32 -Wall
# LDFLAGS=-lm
# RM=rm -f
# TARGET=main
# OBJECTS=main.o

# .PHONY: clean

# .cpp.o:
# 	$(CXX) $(CFLAGS) -c -o $@ $<

# all: main

# $(TARGET): $(OBJECTS)
# 	$(CXX) $(CFLAGS) $(LDFLAGS) -o $@ $^

# clean:
# 	$(RM) *.o $(TARGET) 

CC=gcc
CFLAGS=-g -m32 -g -Wall
RM=rm -f
TARGET=hanoi
OBJECTS=main.o hanoi_s_rec.o

.PHONY: clean

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

.s.o:
	$(CC) $(CFLAGS) -c -o $@ $<

all: hanoi

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) *.o $(TARGET)
