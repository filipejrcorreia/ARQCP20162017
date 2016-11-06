#include <stdio.h>
#include "asm.h"

short int *ptrvec1;
short int *ptrvec2;
int *ptrvec3;
int num;

int main(){
	
    num = 10;
	
	short int vec1[10]= {5,34, 2,1,76,100,23,3,2,1};
	short int vec2[10]= {4,9,1,5,20,76,1,5,6,70};
	int vec3[num];
	int i;

	ptrvec1 = vec1;
	ptrvec2=vec2;
	ptrvec3=vec3;
	
	printf("\nVetor inicial 1: {");
	for (i = 0; i < num; i++)
	{
		printf("  %hi",vec1[i]);
	}
	printf("}\n");
	printf("Vetor inicial 2: {");
	for (i = 0; i < num; i++)
	{
		printf("  %hi",vec2[i]);
	}
	printf("}\n");

	int copiados =vec_diff();	
	printf("Vetor final: {");
	for (i = 0; i < copiados; i++)
	{
		printf("  %d",vec3[i]);
	}
	printf("}\nNumero de valores: %d\n",copiados);
	
	
	return 0;
}
