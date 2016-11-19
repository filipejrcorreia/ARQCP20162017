#include <stdio.h>

void changes( int * ptr){

	int x = *ptr; /* x é igualado ao numero apontado por ptr */

	x = x >> 8 & 0x0000000f; /* há um shift à direita de x de 8 casas e a utilização de uma mascara para x tomar o valor dos 4 bits menos significativos do segundo byte menos significativo do valor apontado por ptr */

	if( x > 7 ){ /* Se x não for maior que 7 não entra no if */

		*ptr = *ptr ^ 0x00000f00; /* é aplicado um xor ao valor apontado por ptr de forma a trocar os bits necessários */
	}
	
}
