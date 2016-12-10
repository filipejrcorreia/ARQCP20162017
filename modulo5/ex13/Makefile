main: main.o pop.o push.o
	gcc -Wall -g main.o pop.o push.o -o stack

main.o: main.c linker.h
	gcc -Wall -g -c main.c

pop.o: pop.c
	gcc -Wall -g -c pop.c

push.o: push.c
	gcc -Wall -g -c push.c


run: main
	./stack

clean: 
	rm *.o stack
