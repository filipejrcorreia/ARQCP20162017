main: main.o sum_matrixes.o create_matrix.o 
	gcc -Wall -g main.o sum_matrixes.o create_matrix.o -o main 

main.o: main.c
	gcc -Wall -g -c main.c

sum_matrixes.o: sum_matrixes.c
	gcc -Wall -g -c sum_matrixes.c

create_matrix.o: create_matrix.c
	gcc -Wall -g -c create_matrix.c

run: main
	./main

clean:
	rm *.o main 
	
