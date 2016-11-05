main: main.o vec_fill.o
	gcc -Wall -g main.o vec_fill.o -o vec_fill

main.o: main.c vec_fill.h
	gcc -Wall -g -c main.c

vec_fill.o: vec_fill.s
	gcc -Wall -g -c vec_fill.s

run: main
	./vec_fill

clean: 
	rm *.o vec_fill
