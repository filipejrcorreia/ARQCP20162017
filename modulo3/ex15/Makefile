main: main.o array_sort.o
	gcc -Wall -g main.o array_sort.o -o array_sort

main.o: main.c array_sort.h
	gcc -Wall -g -c main.c

array_sort.o: array_sort.s
	gcc -Wall -g -c array_sort.s

run: array_sort
	./array_sort

clean: 
	rm *.o array_sort
