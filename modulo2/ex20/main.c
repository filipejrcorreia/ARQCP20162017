#include <stdio.h>
#include "returns.h"

int main(void){

	int res = 0;

	printf("Introduza um numero:");
	scanf("%d", &num);
	
	res = returns();

	if( res == 1){
	
		printf("O numero é par e positivo:\n");
	}
	if( res == 2){

                printf("O numero é par e negativo:\n");
        }
	if( res == 3){

                printf("O numero é impar e positivo:\n");
        }
	if( res == 4){

                printf("O numero é impar e negativo:\n");
        }

return 0;
}
