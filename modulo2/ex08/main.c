#include <stdio.h>
#include "operation.h"

int C = 0,D = 0;
char A = 0;
short B = 0;

int main(void){

	long long int value = 0;

	printf("Valor A:");

	scanf(" %u",&A);

	printf("Valor B:");

	scanf("%hu",&B);

	printf("Valor C:");

        scanf("%d",&C);

        printf("Valor D:");

        scanf("%d",&D);

	value = op();

	printf("operation = %lld\n",value);

return 0;
}
