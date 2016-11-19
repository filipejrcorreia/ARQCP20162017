main: main.o changes.o changes_vec.o
	gcc -Wall -g main.o changes.o changes_vec.o -o changes

main.o: main.c changes.h changes_vec.h
	gcc -Wall -g -c main.c

changes.o: changes.s
	gcc -Wall -g -c changes.s

changes_vec.o: changes_vec.s
	gcc -Wall -g -c changes_vec.s

run: main
	./changes

clean: 
	rm *.o changes
