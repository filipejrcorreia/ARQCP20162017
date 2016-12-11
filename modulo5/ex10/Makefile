main: main.o search_matrix.o create_matrix.o 
	gcc -Wall -g main.o search_matrix.o create_matrix.o -o main 

main.o: main.c
	gcc -Wall -g -c main.c

search_matrix.o: search_matrix.c
	gcc -Wall -g -c search_matrix.c

create_matrix.o: create_matrix.c
	gcc -Wall -g -c create_matrix.c

run: main
	./main

clean:
	rm *.o main 

