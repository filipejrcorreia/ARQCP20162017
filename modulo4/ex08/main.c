#include <stdio.h>
#include "print_result.h"
#include "calculate.h"

int main(void){

	int a, b, result;

	printf("Introduza o valor de a: ");
	scanf("%d", &a);

	printf("Introduza o valor de b: ");
        scanf("%d", &b);

	result = calculate(a, b);

	printf("O resultado final é %d\n", result);

return 0;

}
