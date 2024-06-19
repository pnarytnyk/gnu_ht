main: main.c src1.o src2.o src3.o
	ar -rcs libtest.a $(filter-out $<,$^)
	gcc $< -lm -L . -l test -o $@

src1.o: src1.c
	gcc -Wall -Werror -Wextra -lm -c $<
src2.o: src2.c
	gcc -Wall -Werror -Wextra -lm -c $<
src3.o: src3.c
	gcc -Wall -Werror -Wextra -lm -c $<

clean:
	rm -rf *.o *.a main