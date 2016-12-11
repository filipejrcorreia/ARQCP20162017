main: main.o save_grades.o
	gcc -Wall -g main.o save_grades.o -o main

main.o: main.c
	gcc -g -c main.c

save_grades.o: save_grades.s
	gcc -g -c save_grades.s

run: main
	./main

clean:
	rm *.o main
