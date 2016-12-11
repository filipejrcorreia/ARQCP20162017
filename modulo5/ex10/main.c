#include <stdio.h>
#include "create_matrix.h"
#include "search_matrix.h"


int main(void){


int y = 10;
int x = 10;


int **matriz;

matriz =create_matrix(y,x);

*(*(matriz+1)+3) = 13;

int existe = search_matrix(matriz, 10, 10,13);

if (existe==1)
{
	printf("Existe\n");
}else{
	printf("Nao existe\n");

}


return 0;
}
