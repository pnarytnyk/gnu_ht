main: main.c src1.o src2.o src3.o
	gcc -Wall -Werror -Wextra -lm -c main.c
	gcc -o main main.o src1.o src2.o src3.o

include src1.mk
include src2.mk
include src3.mk

.PHONY: clean

clean:
	rm -rf *.o *.a main