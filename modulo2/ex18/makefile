factorial: main.o factorial.o
	gcc -Wall -g main.o factorial.o -o factorial

main.o: main.c factorial.h
	gcc -Wall -g -c main.c

factorial.o: factorial.s
	gcc -Wall -g -c factorial.s

run: factorial
	./factorial

clean:
	rm *.o 	factorial
