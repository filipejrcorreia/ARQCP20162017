#include <stdio.h>
#include "asm.h"

int *ptrvec;
int num;

int main(){
	
	printf("Insira o número de elementos do vetor: ");
	scanf("%d", &num);
	
	int vec[num];
	int i;
	ptrvec = vec;
	
	for(i=0; i<num; i++){
		printf("Valor da %dª posição: ", (i+1));
		scanf("%d", &vec[i]);
	}
	printf("\nvetor inicial : {");
       	for(i=0; i<num; i++){
		printf("  %d ",vec[i] );
	}
printf("}\n");
	
 printf("O numero de resultados é %d.\n",count_seq());
	
	return 0;
}
