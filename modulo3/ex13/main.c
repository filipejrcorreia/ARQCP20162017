#include <stdio.h>
#include "vec_fill.h"

int num;

int* ptrvec;

int main(void){

	int vec [] = { -1, -2, -4, 5, 6, 1, 5, 3, -3, 5};

	ptrvec = vec;

	num = 10;

	vec_fill();

	int i;
	
	printf("Vetor: \n");

	for(i = 0; i< num; i++){

	printf("%d ", *(ptrvec + i));

	}
	printf("\n");

return 0;

}
