#include <stdio.h>
#include "sub_greater.h"

int main(void){

	int num1;
	
	int num2;

	int small = 0;

	int * smaller = &small;

	printf("Introduza o primeiro numero: ");

	scanf("%d", &num1);
	
	printf("Introduza o segundo numero: ");

	scanf("%d", &num2);

	int result;

	result = sub_greater(num1, num2, smaller);

	printf("O resultado é %d, o endereço de memória é %p e o valor desse endereço é %d\n", result, smaller, *smaller);

return 0;

}
