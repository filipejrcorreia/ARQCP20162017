#include <stdio.h>
#include "asm.h"

int valor=0, valor1=1;
char res=0;

int main(void) {

	printf("Valor 1:");

	scanf("%d",&valor);

	printf("Valor 2:");
	scanf("%d",&valor1);

	
	if (isMultiple()==0)
	{
		printf("É multiplo");
	}else{
		printf("Nao é");
	}

return 0;
}
