#include <stdio.h>
#include "asm.h"

int indice=0,res=0,t0=0,t1=1;

int main(void) {

	printf("Indice pretendido:");

	scanf("%d",&indice);

	
	res=fibo();
	
       	printf("O valor na sequencia de Fibonacci para o indice %d é %d\n",indice,res);

return 0;
}
