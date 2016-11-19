main: main.o activate_bit.o
	gcc -Wall -g main.o activate_bit.o -o activate_bit

main.o: main.c activate_bit.h
	gcc -Wall -g -c main.c

activate_bit.o: activate_bit.c
	gcc -Wall -g -c activate_bit.c

run: main
	./activate_bit

clean: 
	rm *.o activate_bit
