#include "linker.h"
#include <stdlib.h>

int pop(struct node **ptrHead){

	struct node * top = *ptrHead; /*O apontador top do tipo node aponta para o valor apontado por ptrHead */
	int data = top->data;  /*data é data do apontado pelo endereço apontado por ptrHead que passou para top */
	*ptrHead = top->next; /*O endereço apontado por ptrHead passa a ser o endereço do apontador next de top, assim top deixa de ser o head da stack*/
	free(top); /*O espaço alocado para top é libertado */

return data;
}
