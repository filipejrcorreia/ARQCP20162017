main: main.o vec_inc.o
	gcc -Wall -g main.o vec_inc.o -o vec_inc

main.o: main.c vec_inc.h
	gcc -Wall -g -c main.c

vec_inc.o: vec_inc.s
	gcc -Wall -g -c vec_inc.s

run: vec_inc
	./vec_inc

clean: 
	rm *.o vec_inc
