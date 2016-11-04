#include <stdio.h>
#include "vec_greater10.h"

long int * ptrvec;

int num;

int main(void){


	long int vec [] = {5214,412,4,132,3,412,5,15,6,312,10};
	
	num = 10;

	ptrvec = vec;

	int cont;

	cont = vec_greater10();

	printf("Este vetor tem %d elementos maiores ou iguais a 10\n", cont);

return 0;

}
