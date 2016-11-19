#include <stdio.h>

int activate_bit(int * ptr, int pos){

	int x = *ptr; /* x fica com o valor apontado por ptr */

	int verify = 0; /* Variável usada para o return e para verificar se o bit é alterado */
	
	if((x >> pos) %2 == 0 && pos >= 0 && pos <= 31){ /*Shift do numero pos posiçõas para a direita para verificar se o bit está ou não ativo */

		*ptr = *ptr + (1 << (pos - 1)); /*Ativa o bit selecionado */
	
		verify = 1;

	}

return verify;

}
