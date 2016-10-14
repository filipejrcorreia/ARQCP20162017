operation: main.o operation.o
	gcc -Wall -g main.o operation.o -o operation

main.o: main.c operation.h
	gcc -Wall -g -c main.c

operation.o: operation.s
	gcc -Wall -g -c operation.s

run: operation
	./operation

clean:
	rm *.o 	operation
