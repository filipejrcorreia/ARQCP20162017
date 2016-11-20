main: main.o greater_date.o 
	gcc -Wall -g main.o greater_date.o -o main 

main.o: main.c
	gcc -Wall -g -c main.c

greater_date.o: greater_date.s
	gcc -Wall -g -c greater_date.s

run: main
	./main

clean: 
	rm *.o main
