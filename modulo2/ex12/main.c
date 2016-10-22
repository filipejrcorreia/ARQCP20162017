#include <stdio.h>
#include "asm.h"

int main(void){

	int res = 0;

	printf("Length:");
	
	scanf("%d", &length);
	
	printf("Width:");
	
	scanf("%d", &width);
	
	res = getArea();
	
	printf("Área:%d\n",res);

return 0;
}
