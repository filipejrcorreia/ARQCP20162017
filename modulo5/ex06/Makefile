main: main.o save_data.o
	gcc -Wall -g main.o save_data.o -o main

main.o: main.c
	gcc -Wall -g -c main.c

insere_dados.o: save_data.s
	gcc -Wall -g -c save_data.s

run:main
	./main

clean:
	rm *.o main
