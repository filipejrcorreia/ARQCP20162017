main: main.o add_byte.o
	gcc -Wall -g main.o add_byte.o -o main

main.o: main.c 
	gcc -Wall -g -c main.c

add_byte.o: add_byte.c
	gcc -Wall -g -c add_byte.c

run: main
	./main

clean:
	rm *.o main
