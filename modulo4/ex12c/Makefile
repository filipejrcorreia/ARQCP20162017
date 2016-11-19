main: main.o activate_bit.o activate_2bits.o
	gcc -Wall -g main.o activate_bit.o activate_2bits.o -o activate_bit

main.o: main.c activate_bit.h activate_2bits.h
	gcc -Wall -g -c main.c

activate_bit.o: activate_bit.s
	gcc -Wall -g -c activate_bit.s

activate_2bits.o: activate_2bits.s
	gcc -Wall -g -c activate_2bits.s

run: main
	./activate_bit

clean: 
	rm *.o activate_bit
