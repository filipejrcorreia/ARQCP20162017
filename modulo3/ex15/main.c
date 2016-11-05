#include <stdio.h>
#include "array_sort.h"

int * ptrvec;

int num;

int main(void){

	
	int vec [] = { 33 , 14, 134, 662, 75, 57, 6, 39, 58, 665};
	
	num = 10;

	ptrvec = vec;

	int i;

	array_sort();
	
	for(i=0; i<num; i++){

	printf("%d ", *(vec + i));

	}

	printf("\n");

return 0;

}
