#include <stdio.h>
#include "activate_bit.h"

int main(void){

	int num, pos;

	int *ptr;

	ptr = &num;

	printf("Introduza um numero: ");

	scanf("%d", &num);

	printf("Introduza uma posição: ");

	scanf("%d", &pos);

	int verify;

	verify = activate_bit(ptr, pos);

	if(verify == 1){

		printf("Numero alterado: %d\n", num);

	}else{
	
		printf("O numero não foi alterado\n");
	}

return 0;

} 

