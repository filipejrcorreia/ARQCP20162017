#include <stdio.h>
#include "asm.h"

short int *ptrvec1;
short int *ptrvec2;
int *ptrvec3;
int num;

int main(){
	
	printf("Insira o número de elementos do vetor: ");
	scanf("%d", &num);
	
	short int vec1[num];
	short int vec2[num];
	int vec3[num];
	int i;

	printf("\nVetor 1");
	for(i=0; i<num; i++){
		printf("\nValor da %dª posição: ", (i+1));
		scanf("\n%hi", &vec1[i]);
	}
	printf("\nVetor 2");
	for(i=0; i<num; i++){
		printf("\nValor da %dª posição: ", (i+1));
		scanf("%hi", &vec2[i]);
	}
	ptrvec1 = vec1;
	ptrvec2=vec2;
	ptrvec3=vec3;
	printf("Vetor incial 1: {");
	for (i = 0; i < num; i++)
	{
       	printf("  %hi",vec1[i]);
	}
	printf("}\n");
		printf("Vetor incial 2: {");
	for (i = 0; i < num; i++)
	{
		printf("  %hi",vec2[i]);
	}
	printf("}\n");
	int alterados =vec_diff();	
	printf("Vetor final: {");
	for (i = 0; i < num; i++)
	{
		printf("  %hi",vec3[i]);
	}
	printf("}\n Com %d numeros alterados",alterados);
	
	
	
	return 0;
}
