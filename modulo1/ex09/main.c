#include <stdio.h>
#include "sort_without_reps.h"
#include "sort.h"

int main(void){
	
	int src[] = { 2 , 2 , 4, 4, 1, 3, 54, 3, 54};
	
	int n, m;

	n = 9;

	int * pointer;
		
	int dest[10] = {0};

	pointer = dest;	
	
	m = sort_without_reps(src, n, dest);

	printf("Tamanho do vetor final: %d \nVetor final: ", m);
		
	while( *pointer != '\0'){
	
		printf("%d ", *pointer);
		
		pointer++;
	}
}
