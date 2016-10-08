# include <stdio.h>
# include "compress_shorts.h"

int main(void){

	int n;
	
	n = 10;

	short shorts[] = {1 , 2, 3, 4, 5, 6, 7, 8, 9, 10};

	int integers[5] = {0}; 

	compress_shorts(shorts, n, integers);
		
	int i;
	
	for( i = 0; i < (n/2); i++){

	printf(" Décimal : %d", integers[i]);
	
	}

	printf("\n");
	
return 0;
}
