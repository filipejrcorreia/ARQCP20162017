 # makefile exercicio 15

ex15: generate_random_numbers.o increase_number_sets.o check_condition_sets.o main.o
		gcc generate_random_numbers.o increase_number_sets.o check_condition_sets.o main.o -o ex15
		
generate_random_numbers.o: generate_random_numbers.c
		gcc -c generate_random_numbers.c -o generate_random_numbers.o
		
increase_number_sets.o: increase_number_sets.c
		gcc -c increase_number_sets.c -o increase_number_sets.o	
		
check_condition_sets.o: check_condition_sets.c
		gcc -c check_condition_sets.c -o check_condition_sets.o	

main.o: main.c
		gcc -c main.c -o main.o
		
run: ex15
		./ex15
		
clean:
		rm generate_random_numbers.o increase_number_sets.o check_condition_sets.o main.o ex15
