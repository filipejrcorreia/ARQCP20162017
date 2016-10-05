#include <stdio.h>

void power_ref(int * x, int y){
	
	int i;

	i=1;
	
	int j = *x;
	
	while(i != y){
		
		*x = (*x) * (j);
		
		i++;
	}
}
