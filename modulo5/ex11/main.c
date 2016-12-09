#include <stdio.h>
#include "count_even_matrix.h"
#include <stdlib.h>

int main(void){

	int i;

	int k = 4;

	int y = 5;

	int ** matriz;

	matriz = (int **) malloc(y * sizeof (int *)); 
	if( matriz == NULL){

	printf ("Erro ao reservar memória.\n "); exit(1);

	}
	
	for( i = 0; i< y; i++){


		*(matriz + i) = (int *) calloc(k, sizeof(int)); 

		if( matriz[i] == NULL){
			
			printf ("Erro ao reservar memória.\n"); exit(1);

		}

	}

	int row, column;

	for (row=0; row<y; row++){

 	   for(column=0; column<k; column++){
        	matriz[row][column] = rand() % 50;
    		}
		
	}

	int even;

	even = count_even_matrix(matriz, y, k);

	printf("Existem %d numeros pares na matriz\n", even);

	for (row=0; row<y; row++){

 	   for(column=0; column<k; column++){

        	printf("%d     ", matriz[row][column]);
    		}
	printf("\n");
		
	}

	for (i = 0; i < y ; i ++) free (*( matriz + i ));

return 0;

}
	
