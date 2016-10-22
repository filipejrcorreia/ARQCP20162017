steps: main.o ex14.o
	gcc -Wall -g main.o ex14.o -o steps

main.o: main.c ex14.h
	gcc -Wall -g -c main.c

ex14.o: ex14.s
	gcc -Wall -g -c ex14.s

run: steps
	./steps

clean:
	rm *.o 	steps
