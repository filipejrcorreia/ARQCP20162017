main: main.o test_equal.o
	gcc -Wall -g main.o test_equal.o -o test_equal

main.o: main.c test_equal.h
	gcc -Wall -g -c main.c

test_equal.o: test_equal.s
	gcc -Wall -g -c test_equal.s

run: main
	./test_equal

clean: 
	rm *.o test_equal
