#include <stdio.h>
#include "vec_inc.h"

int * ptrvec;

int main(void) {


	int vec[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	
	num = 9;	

	ptrvec = vec;
	
	int i;
	 
	printf("\nVetor original: \n");
	for(i=0; i< num; i++){
	printf("%d", *(ptrvec + i));
	}

	vec_inc();

	printf("\nVetor modificado: \n");
	for(i=0; i< num; i++){
	printf("%d", * (ptrvec+i));
	}

return 0;

}
