#include <stdio.h>
#include "sum.h"

int main(void){

	int res = 0;

	printf("Valor 1:");
	
	scanf("%d", &op1);
	
	printf("Valor 2:");
	
	scanf("%d", &op2);

	res = sum();

	printf("Resultado: %d\n",res);

	if(cf == 0 && of == 0){
	
		printf("Não há carry nem overflow\n");
	}
	if(cf == 1 && of == 0){

		printf("Há carry mas não há overflow\n");
	}
	if(cf == 0 && of == 1){
		
		printf("Há overflow mas não há carry\n");
	}
	if(cf == 1 && of == 1){
			
		printf("Há carry e overflow\n");
	}

return 0;
}

