main: main.o rotateLeft.o rotateRight.o
	gcc -Wall -g main.o rotateRight.o rotateLeft.o -o main

main.o: main.c rotateLeft.h
	gcc -Wall -g -c main.c

rotateLeft.o: rotateLeft.c
	gcc -Wall -g -c rotateLeft.c

rotateRight.o: rotateRight.c
	gcc -Wall -g -c rotateRight.c

run: main
	./main

clean: 
	rm *.o main
