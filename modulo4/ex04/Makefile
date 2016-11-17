main: main.o sub_greater.o
	gcc -Wall -g main.o sub_greater.o -o sub_greater

main.o: main.c sub_greater.h
	gcc -Wall -g -c main.c

sub_greater.o: sub_greater.s
	gcc -Wall -g -c sub_greater.s

run: main
	./sub_greater

clean: 
	rm *.o sub_greater
