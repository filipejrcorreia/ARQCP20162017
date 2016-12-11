#include "create_matrix.h"


int ** sum_matrixes(int **a, int **b, int y , int k){
	
	int  i,j;
	int **resultado;
	resultado = create_matrix(y,k);					//matriz resultado
	
	
	for(i = 0 ; i< y ; i++ ){											//linha a linha, coluna a coluna somar 
																		// e poem na matriz resultado		
		for(j = 0 ; j< k ; j++){
			*(*(resultado + i) + j) = *(*(a+i)+j)+ *(*(b+i) + j ) ;
		}
	}
	
	return resultado;
}
