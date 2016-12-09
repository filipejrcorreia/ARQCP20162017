main: main.o count_even_matrix.o
	gcc -Wall -g main.o count_even_matrix.o -o count_even_matrix

main.o: main.c count_even_matrix.h
	gcc -Wall -g -c main.c

count_even_matrix.o: count_even_matrix.s
	gcc -Wall -g -c count_even_matrix.s

run: main
	./count_even_matrix

clean: 
	rm *.o count_even_matrix
