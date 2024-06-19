main: main.c src1.c src2.c src3.c
	gcc -Wall -Werror -Wextra -lm -c src1.c src2.c src3.c
	ar -rcs libtest.a src1.o src2.o src3.o
	gcc main.c -lm -L . -l test -o main

clean:
	rm -rf *.o *.a main