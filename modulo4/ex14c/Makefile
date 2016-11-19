main: main.o join_bits.o mixed_sum.o
	gcc -Wall -g main.o join_bits.o mixed_sum.o -o join_bits

main.o: main.c join_bits.h mixed_sum.h
	gcc -Wall -g -c main.c

join_bits.o: join_bits.s
	gcc -Wall -g -c join_bits.s

mixed_sum.o: mixed_sum.s
	gcc -Wall -g -c mixed_sum.s

run: main
	./join_bits

clean: 
	rm *.o join_bits
