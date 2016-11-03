main: main.o space_count.o
	gcc -Wall -g main.o space_count.o -o space_count

main.o: main.c space_count.h
	gcc -Wall -g -c main.c

space_count.o: space_count.s
	gcc -Wall -g -c space_count.s

run: space_count
	./space_count

clean: 
	rm *.o space_count
