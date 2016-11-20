#include <stdio.h>
#include "sum_multiples_x.h"

int main(void){

	char cvec [] = {7, 12, 22, 90, 60, 37, 43, 56, 13, 0};

	int x, sum;

	char * vec;

	vec = cvec;

	printf("Introduza o valor de x: ");

	scanf("%d", &x);

	sum = sum_multiples_x(vec, x);

	printf("Soma dos multiplos do segundo byte %d: %d\n", x, sum);

return 0;

}
