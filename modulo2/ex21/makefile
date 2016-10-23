main debug: main.o salario.o
	gcc $(DEBUG) -Wall -g main.o salario.o -o main

debug: DEBUG = -DDEBUG

debug: main

main.o: main.c salario.h
	gcc -Wall -g -c main.c

salario.o: salario.s
	gcc -Wall -g -c salario.s

run: main
	./main

clean:
	rm *.o main

