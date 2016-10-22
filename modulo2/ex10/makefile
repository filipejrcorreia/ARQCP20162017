sum: main.o sum.o
	gcc -Wall -g main.o sum.o -o sum

main.o: main.c sum.h
	gcc -Wall -g -c main.c

sum.o: sum.s
	gcc -Wall -g -c sum.s

run: sum
	./sum

clean:
	rm *.o 	sum
