#include <stdio.h>
#include "join_bits.h"

int main(void){

	int a, b, pos, num;

	printf("a: ");

	scanf("%d", &a);

	printf("b: ");

	scanf("%d", &b);

	printf("Posição: ");

	scanf("%d", &pos);

	num = join_bits(a , b, pos);

	printf("Novo numero: %d\n", num);

return 0;

}
