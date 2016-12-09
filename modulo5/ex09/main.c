#include <stdio.h>
#include <stdlib.h>
#include "create_matrix.h"

int main(void){

	int k = 4;

	int y = 5;

	int ** matriz;
	matriz = create_matrix( y, k);

	if(matriz == NULL) {

		printf("Não foi possivel alocar a matriz\n");
	
	}else{

		printf("Matriz criada com sucesso\n");

		int i;

		for( i = 0; i< y; i++){
        	        free(*(matriz + i));
		}
        }

	free(matriz);


return 0;

}
	
