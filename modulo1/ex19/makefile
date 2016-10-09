 # makefile exercicio 19

ex17: find_word.o main.o
		gcc find_word.o main.o -o ex19
		
find_word.o: find_word.c
		gcc -c find_word.c -o find_word.o

main.o: main.c
		gcc -c main.c -o main.o
		
run: ex19
		./ex19
		
clean:
		rm find_word.o main.o ex19

