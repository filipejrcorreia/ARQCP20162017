#include <stdio.h>

int join_bits(int a, int b, int pos){

	int num;
	
	if(pos < 32){

		b = b >> (pos + 1); /* Move os bits de b pos posições para a direita */

		b = b << (pos + 1); /* Move os bits de b pos posições para a posição original, ficando com os novos bits à direita a 0 */

		a = a << (31 - pos); /*Move os bits de a para a esquerda*/

		a = a >> (31 - pos); /*Move os bits de a para a posição original, no entanto os novos bits à direita estão a 0 */

		num = b + a;

	}

return num;

}
