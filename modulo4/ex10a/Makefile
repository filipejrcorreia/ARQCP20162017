main: main.o count_bits_zero.o
	gcc -Wall -g main.o count_bits_zero.o -o count_bits_zero

main.o: main.c count_bits_zero.h
	gcc -Wall -g -c main.c

count_bits_zero.o: count_bits_zero.c
	gcc -Wall -g -c count_bits_zero.c

run: main
	./count_bits_zero

clean: 
	rm *.o count_bits_zero
