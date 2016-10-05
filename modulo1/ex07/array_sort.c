#include <stdio.h>

void array_sort(int *vec, int n){
	
	int i, j, temp;

	for(i = 0; i < n; i++){
		
		for(j = 0; j < n - i; j++){
	
			if(vec[j] > vec[j+1]){
				
				temp = vec[j+1];
				vec[j+1] = vec[j];
				vec[j] = temp;
			}
		}
	}
}		
