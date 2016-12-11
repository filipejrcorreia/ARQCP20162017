main: main.o create_str.o 
	gcc -Wall -g main.o create_str.o  -o main 

main.o: main.c
	gcc -Wall -g -c main.c

create_str.o: create_str.c
	gcc -Wall -g -c create_str.c

run: main
	./main

clean:
	rm *.o main 

