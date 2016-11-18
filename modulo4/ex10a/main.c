#include <stdio.h>
#include "count_bits_zero.h"

int main(void){

	int x = 0, total = 0;

	printf("Introduza um número: ");
	
	scanf("%d", &x);
	
	total = count_bits_zero(x);
	
	printf("O numero total de 0's nesse numero em binário é: %d\n", total);

return  0;

}
