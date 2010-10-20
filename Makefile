# Basic Makefile for arm cross compile on Mac OS X

CC = /Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc-4.2
LD = $(CC)

CFLAGS = -arch armv7 -isysroot /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS4.1.sdk
LFLAGS =-arch armv7 -isysroot /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS4.1.sdk

.SUFFIXES:

.PHONY: clean build run

all: main

main: main.c
	$(CC) -c $(CFLAGS) $< -o main.o
	$(LD) main.o -o $@ $(LFLAGS) $(LIBS)

clean:
	rm -f *.o main

run: main
	./main
