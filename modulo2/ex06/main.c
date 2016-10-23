#include <stdio.h>
#include "asm.h"
#include "crossSumBytes.h"

short valor=0, res=0;

int main(void) {

	printf("Valor 1:");

	scanf("%u",&by1);

	printf("Valor 2:");

	scanf("%u",&by2);

	valor = concat();

	printf("Concatenated = %d\n", valor);
       	
        swapBytes();
	
	printf("Swapped bytes = %d:0x%x\n", res, res);

return 0;
}
