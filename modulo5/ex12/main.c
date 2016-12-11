#include <stdio.h>
#include "create_matrix.h"
#include "sum_matrixes.h"


int main(void){
	
	int x = 10;			//define tamanho matriz
	int y = 10;
	
	int **matriz;
	
	matriz = create_matrix(y,x);		//cria matriz
	
	*(*(matriz + 1)+ 9) = 10;			//atribui valores
	*(*(matriz + 3)+ 4) = 2;
	*(*(matriz + 5)+ 6) = 1;
	
	int **matriz1;						//cria segunda matriz
	
	matriz1 = create_matrix(y,x);
	
	*(*(matriz1 + 3)+ 4) = 4;			//atribui valores
	*(*(matriz1 + 1)+ 9) = 3;
	*(*(matriz1 + 5)+ 6) = 2;
	
	int **resul;
	
	resul=sum_matrixes(matriz,matriz1, x, y);	//invoca a soma das matriz que retorna a matriz resultado
	
	printf("13 = %d\n",*(*(resul + 1)+ 9));
	printf("6 = %d\n",*(*(resul + 3)+ 4));
	printf("3 = %d\n",*(*(resul + 5)+ 6));

	return 0;
}
