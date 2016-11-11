main: main.o sum_n.o
	gcc -Wall -g main.o sum_n.o -o sum_n

main.o: main.c sum_n.h
	gcc -Wall -g -c main.c

sum_n.o: sum_n.s
	gcc -Wall -g -c sum_n.s

run: main
	./sum_n

clean: 
	rm *.o sum_n
