#include <stdio.h>
#include "sommation.h"

int  A = 0, B = 0, n = 0;

int main(void){

	printf("Introduza o valor de A:");
	scanf("%d", &A);

	printf("Introduza o valor de B:");
	scanf("%d", &B);

	printf("Introduza o valor de n:");
	scanf("%d", &n);

	int res;
	res=0;

	res = sommation();

	printf("O resutado é: %d\n", res);

return 0;
}
