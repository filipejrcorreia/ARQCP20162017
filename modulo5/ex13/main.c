#include "linker.h"
#include <stdio.h>

int main(void){

	struct node *head = NULL; /*Criação de um apontador para estruturas do tipo node */

	int n;

	while( n != 0){

		printf("Selecione uma opção:\n 1 - Introduzir um valor na stack;\n 2 retirar e imprimir o valor no topo da stack da stack;\n 0 - Sair;\n");

		scanf("%d", &n);

		if(n==1){

			printf("Introduza um valor para a stack\n");

			int num;

			scanf("%d", &num);

			head = push(head, num); /*head passa a ser o valor retornado por push, ou seja o apontador do topo da stack passa acompanha ovalor novo introduzido */

		}
		if(n==2){
	
			if(head){	
				int s;

				s = pop(&head);

				printf("Valor: %d\n", s);
			}else{

			printf("Não há valores na stack\n");

			}

		}

	}

return 0;

}
