main: main.o vec_search.o
	gcc -Wall -g main.o vec_search.o -o vec_search

main.o: main.c vec_search.h
	gcc -Wall -g -c main.c

vec_search.o: vec_search.s
	gcc -Wall -g -c vec_search.s

run: main

	./vec_search

clean: 
	rm *.o vec_search
