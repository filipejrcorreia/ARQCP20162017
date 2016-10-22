returns: main.o returns.o
	gcc -Wall -g main.o returns.o -o returns

main.o: main.c returns.h
	gcc -Wall -g -c main.c

returns.o: returns.s
	gcc -Wall -g -c returns.s

run: returns
	./returns

clean:
	rm *.o 	returns
