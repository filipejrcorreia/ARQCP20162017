main: main.o sum_multiples_x.o
	gcc -Wall -g main.o sum_multiples_x.o -o sum_multiples_x

main.o: main.c sum_multiples_x.h
	gcc -Wall -g -c main.c

sum_multiples_x.o: sum_multiples_x.s
	gcc -Wall -g -c sum_multiples_x.s

run: main
	./sum_multiples_x

clean: 
	rm *.o sum_multiples_x
