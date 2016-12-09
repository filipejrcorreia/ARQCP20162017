main: main.o create_matrix.o
	gcc -Wall -g main.o create_matrix.o -o create_matrix

main.o: main.c create_matrix.h
	gcc -Wall -g -c main.c

create_matrix.o: create_matrix.c
	gcc -Wall -g -c create_matrix.c

run: main
	./create_matrix

clean: 
	rm *.o create_matrix
