#include <stdlib.h>

int ** create_matrix(int y, int k){

	int i;

	int ** matrix; /*endereço da matriz*/

	matrix = (int **) calloc(y, sizeof (int *)); /* array de apontadores de int com tamanho y*/

	for( i = 0; i< y; i++){
		/*Reserva memória para k int's em cada posição de matrix */

		*(matrix + i) = (int *) calloc(k, sizeof(int)); 
		
		if( matrix[i] == NULL){
			
			matrix = NULL;
		}

	}

return matrix;

}
	
