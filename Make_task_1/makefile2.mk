main: main.c src1.o src2.o src3.o
	ar -rcs libtest.a src1.o src2.o src3.o
	gcc main.c -lm -L . -l test -o main

src1.o:
	gcc -Wall -Werror -Wextra -lm -c src1.c
src2.o:
	gcc -Wall -Werror -Wextra -lm -c src2.c
src3.o:
	gcc -Wall -Werror -Wextra -lm -c src3.c

clean:
	rm -rf *.o *.a main