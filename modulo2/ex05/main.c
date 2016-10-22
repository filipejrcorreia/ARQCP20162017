#include <stdio.h>
#include "asm.h"

short valor=0, res=0;

int main(void) {

	printf("Valor inicial:");

	scanf("%d",&valor);

	printf("sum = %d:0x%x\n", valor, valor);
       	
        swapBytes();
	
	printf("sum = %d:0x%x\n", res, res);

return 0;
}
