#include <stdio.h>

int sum_multiples_x(char * vec, int x){

	int sum = 0, byte;

	byte = x >> 8 & 0x000000ff; /* byte fica com o valor do segundo byte menos significativo de x*/

	while(*vec != 0){

		if(*vec % byte == 0){ /* Se o valor atual de vec for multiplo de byte esse valor é somado a sum */

			sum = sum + *(vec);
		}
	
		vec++; /*Incremento de vec, passa para o próximo indice do vetor*/
	}

return sum;
}
	
