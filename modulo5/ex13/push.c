#include "linker.h"
#include <stdlib.h>

struct node * push(struct node * head, int num){

	struct node * new = malloc(sizeof(*head)); /*aloca espaço para o novo node da linked list*/
	new->next = head; /* o apntador next na estrutura node passa a pontar para head */
	new->data = num; /* Data guarda o inteiro introduzido na linked list */

return new; /*Retorno do node */
}
