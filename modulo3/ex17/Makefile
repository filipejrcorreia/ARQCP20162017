main: main.o frequencies.o
	gcc -Wall -g main.o frequencies.o -o frequencies

main.o: main.c frequencies.h
	gcc -Wall -g -c main.c

frequencies.o: frequencies.s
	gcc -Wall -g -c frequencies.s

run: main
	./frequencies

clean: 
	rm *.o frequencies
