#include <stdio.h>
#include "sum_n.h"

int main(void){

	int n = 0;

	printf("Introduza o valor de n: ");
	scanf("%d", &n);

	int valor;

	valor = sum_n(n);

	printf("A soma dos valores até n é %d.\n", valor);

return 0;
}
