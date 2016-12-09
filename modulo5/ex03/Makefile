main: main.o change_address.o
	gcc -Wall -g main.o change_address.o -o change_address

main.o: main.c change_address.h
	gcc -Wall -g -c main.c

change_address.o: change_address.s
	gcc -Wall -g -c change_address.s

run: main
	./change_address

clean: 
	rm *.o change_address
