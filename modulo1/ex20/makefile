 # makefile exercicio 20

ex20: find_word.o find_all_words.o main.o
		gcc find_word.o find_all_words.o main.o -o ex20
		
find_word.o: find_word.c
		gcc -c find_word.c -o find_word.o
		
find_all_words.o: find_all_words.c
		gcc -c find_all_words.c -o find_all_words.o

main.o: main.c
		gcc -c main.c -o main.o
		
run: ex20
		./ex20
		
clean:
		rm find_word.o find_all_words.o main.o ex20
