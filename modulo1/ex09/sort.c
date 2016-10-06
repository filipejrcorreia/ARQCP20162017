#include <stdio.h>

void sort(int *src, int n){
	
	int i, j, temp;
	
	for(j = 0; j < n - 1; j++){
	
		for(i = 0; i < n - 1; i++){
			
			if(*(src + i) > *(src + i + 1)){
			
				temp = *(src + i);
				*(src + i) = *(src + i + 1);
				*(src + i + 1) = temp;
			}
		}

	}
}
