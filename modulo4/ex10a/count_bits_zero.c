#include <stdio.h>

int count_bits_zero(int x){

	int i, total = 0; /*Inicialização da variavel total e criaçaão de i*/

	for(i=0; i<32; i++){

		if(x % 2  == 0){ /*Condiciona o seguinte, sendo a condição o bit atual ser 0, bit menos significativo determina par ou impar */
	
			total++; /*Incrementa total */

		}
	
		x = x >> 1; /*Shift de x 1 casa para a direita, o bit menos significativo passa a ser o bit anteriormente à sua esquerda */
	
	}
	
return total;

}
