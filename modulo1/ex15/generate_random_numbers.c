#include <stdio.h>
#include <stdlib.h>
#include <time.h>


void generate_random_numbers(int *vec)
{
	srand(time(0));
	int i;
    for(i=0; i < 100; i++){
		vec[i] = rand() % 21; 
	}
}
