main: main.o calculate.o print_result.o
	gcc -Wall -g main.o calculate.o print_result.o -o calculate

main.o: main.c calculate.h print_result.h
	gcc -Wall -g -c main.c

calculate.o: calculate.s
	gcc -Wall -g -c calculate.s

print_result.o: print_result.c
	gcc -Wall -g -c print_result.c

run: main
	./calculate

clean: 
	rm *.o calculate
