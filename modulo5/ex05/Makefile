main: main.o find_greater.o
	gcc -Wall -g main.o find_greater.o -o find_greater

main.o: main.c find_greater.h
	gcc -Wall -g -c main.c

change_addres.o: find_greater.s
	gcc -Wall -g -c find_greater.s

run: main
	./find_greater

clean: 
	rm *.o find_greater
