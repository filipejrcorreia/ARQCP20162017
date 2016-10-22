sommation: main.o sommation.o
	gcc -Wall -g main.o sommation.o -o sommation

main.o: main.c sommation.h
	gcc -Wall -g -c main.c

sommation.o: sommation.s
	gcc -Wall -g -c sommation.s

run: sommation
	./sommation

clean:
	rm *.o 	sommation
