#include <stdio.h>
#include "vec_search.h"

short* ptrvec;

int num;

short x;

int main(void){


	short vec[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	
	ptrvec = vec;
	
	num = 10;

	printf("Introduza x: ");

	scanf("%hu", &x);

	short * ptr2;	

	ptr2 = 0;
	
	ptr2 = vec_search();

	if( ptr2 != 0){

	printf("O endereço de %d é %p\n", x, ptr2);
	
	}else{
	
	printf("%d não existe neste vetor\n", x);
	}

return 0;
}

	
