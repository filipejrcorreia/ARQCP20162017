#include <stdio.h>
#include "array_sort.h"

int * ptrvec;

int num;

int main(void){

	
	int vec [] = { 3 , 1, 4, 2, 5, 7, 6, 9, 8, 5};
	
	num = 10;

	ptrvec = vec;

	int i;

	array_sort();
	
	for(i=0; i<=num; i++){

	printf("%d ", *(vec + i));

	}

	printf("\n");

return 0;

}
