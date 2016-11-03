main: main.o sub.o div.o mul.o sum.o mod.o
	gcc -Wall -g main.o sub.o div.o mul.o sum.o mod.o -o main


main.o: main.c sub.h div.h mul.h sum.h mod.h
	gcc -Wall -g -c main.c
mod.o: mod.s
	gcc -Wall -g -c mod.s
sub.o: sub.s
	gcc -Wall -g -c sub.s
div.o: div.s
	gcc -Wall -g -c div.s
mul.o: mul.s
	gcc -Wall -g -c mul.s
sum.o: sum.s
	gcc -Wall -g -c sum.s

run: main
	./main

clean: 
	rm *.o main
