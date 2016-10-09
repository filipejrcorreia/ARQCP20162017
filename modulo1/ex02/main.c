#include <stdio.h>
#include "fill_vetor.h"

int main(){
	int i;
	int vetor[20];
	int *ptr;
	ptr = vetor;
	int n = 20;
	fill_vetor(ptr,n);
	printf("%s","Numeros");
	for(i=0;i<n;i++){
		printf("\n%d",*(ptr+i));
	}
return 0;
}
