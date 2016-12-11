main: main.o save_data.o
	gcc -Wall -g main.o save_data.o -o save_data

main.o: main.c save_data.h
	gcc -Wall -g -c main.c

save_data.o: save_data.c
	gcc -Wall -g -c save_data.c

run: main
	./save_data

clean: 
	rm *.o save_data
