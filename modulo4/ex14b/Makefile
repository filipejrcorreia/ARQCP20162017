main: main.o join_bits.o
	gcc -Wall -g main.o join_bits.o -o join_bits

main.o: main.c join_bits.h
	gcc -Wall -g -c main.c

join_bits.o: join_bits.s
	gcc -Wall -g -c join_bits.s

run: main
	./join_bits

clean: 
	rm *.o join_bits
