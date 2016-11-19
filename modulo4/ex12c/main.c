#include <stdio.h>
#include "activate_bit.h"
#include "activate_2bits.h"

int main(void){

	int num, pos;

	int *ptr;

	ptr = &num;

	printf("Introduza um numero: ");

	scanf("%d", &num);

	printf("Introduza uma posição: ");

	scanf("%d", &pos);

	activate_2bits(ptr, pos);

	printf("Novo numero: %d\n", *ptr);

return 0;

} 

