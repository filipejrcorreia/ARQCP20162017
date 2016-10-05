#include <stdio.h>
#include "array_sort.h"

int main(void){
	
	int i;

	int n = 7;

	int vec[]  = { 33, 421, 1, 32, 4, 77, 92, 146};

	array_sort(vec , n);
		
	for( i = 0; i < n+1; i++){

		printf("%d ", vec[i]);
	}
	
return 0;
}
