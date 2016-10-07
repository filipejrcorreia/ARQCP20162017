#include <stdio.h>

int even_sum(int * vec){

	int i, sum;

	sum = 0;
	
	for( i = 1; i < *vec; i++){
	
		if( *(vec + i) % 2 == 0){
		
		sum = sum + *(vec + i); 
	
		}
	}
	
return sum;
}
