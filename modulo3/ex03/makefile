main: main.o str_copy_p2.o
	gcc -Wall -g main.o str_copy_p2.o -o str_copy_p2

main.o: main.c str_copy_p2.h
	gcc -Wall -g -c main.c

str_copy_p2.o: str_copy_p2.s
	gcc -Wall -g -c str_copy_p2.s

run: main
	./str_copy_p2

clean: 
	rm *.o main
