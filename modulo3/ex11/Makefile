main: main.o vec_greater10.o
	gcc -Wall -g main.o vec_greater10.o -o vec_greater10

main.o: main.c vec_greater10.h
	gcc -Wall -g -c main.c

vec_greater10.o: vec_greater10.s
	gcc -Wall -g -c vec_greater10.s

run: vec_greater10
	./vec_greater10

clean: 
	rm *.o vec_greater10
