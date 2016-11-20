main: main.o activate_bits.o activate_invert_bits.o
	gcc -Wall -g main.o activate_bits.o activate_invert_bits.o -o main

main.o: main.c activate_bits.h activate_invert_bits.h
	gcc -Wall -g -c main.c

activate_bits.o: activate_bits.s
	gcc -Wall -g -c activate_bits.s

activate_invert_bits.o: activate_invert_bits.s
	gcc -Wall -g -c activate_invert_bits.s

run: main
	./main

clean: 
	rm *.o main
