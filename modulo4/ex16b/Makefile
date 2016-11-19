main: main.o changes.o
	gcc -Wall -g main.o changes.o -o changes

main.o: main.c changes.h
	gcc -Wall -g -c main.c

changes.o: changes.s
	gcc -Wall -g -c changes.s

run: main
	./changes

clean: 
	rm *.o changes
