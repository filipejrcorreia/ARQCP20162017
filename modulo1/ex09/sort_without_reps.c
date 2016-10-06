#include <stdio.h>
#include "sort.h"

int sort_without_reps(int * src, int n, int *dest){
	
        sort(src,n);
	
	int i, j, destLength, verify;

	destLength = 0;
	
	verify = 1;
	
	for(i = 0; i < n - 1 ; i++){
		
		for( j = 0; j < n - 1; j++){
			
			if( *(dest + j) == *(src + i) ){
				
				verify = 0;
			}
			
		}
		if( verify == 1 ){
	
			*(dest + destLength) = *(src +i);
			destLength++;
		}
		verify = 1;
	
	}
				
				

return destLength;
}

