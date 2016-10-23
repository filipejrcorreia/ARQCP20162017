#include <stdio.h>
#include "ex14.h"

int main(void){

	int final;
	final = 0;
	printf("Valor de num = ");
	scanf("%d", &num);
	final = steps();
	printf("Valor final = %d\n",final);	

return 0;
}	
