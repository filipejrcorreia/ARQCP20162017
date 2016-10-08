#include <stdio.h>
#include <stdlib.h>
#include <time.h>


void generate_random_numbers(int *vec)
{
	srand(time(0));
	int i;
    for(i=0; i < 100; i++){
		vec[i] = rand() % 21; /* fazer com que vec[i] tenha um valor
		                       * entre 0 e 20, repete o ciclo 100 vezes 
		                       * de forma a preencher os 100 espaços do
		                       * vetor*/
	}
}
