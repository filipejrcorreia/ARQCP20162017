#include <stdio.h>
#include "asm.h"

short int *ptrvec;
int num;

int main(){
	
	printf("Insira o número de elementos do vetor: ");
	scanf("%d", &num);
	
	short int vec[num];
	int i;
	ptrvec = vec;
	
	for(i=0; i<num; i++){
		printf("Valor da %dª posição: ", (i+1));
		scanf("%hi", &vec[i]);
	}
	
	printf("Vetor incial: {");
	for (i = 0; i < num; i++)
	{
		printf("  %hi",vec[i]);
	}
	printf("}");
	int alterados =vec_zero();	
	printf("Vetor final: {");
	for (i = 0; i < num; i++)
	{
		printf("  %hi",vec[i]);
	}
	printf("}\n Com %d numeros alterados",alterados);
	
	
	
	return 0;
}
