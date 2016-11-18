#include <stdio.h>

int count_bits_zero(int x){

	int i, total = 0;

	for(i=0; i<32; i++){

		if(x % 2  == 0){
	
			total++;

		}
	
		x = x >> 1;
	
	}
	
return total;

}
