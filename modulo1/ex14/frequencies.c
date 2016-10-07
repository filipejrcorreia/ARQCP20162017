# include <stdio.h>

void frequencies(float * grades, int n, int * freq){

	int i, j, cont; 
	cont = 0;
	for( i = 0; i < 21; i++){

		for(j = 0; j < n; j++){

			if( (int) *(grades + j) == i){
			
				cont++;	
			}
		}
		
	*(freq + i) = cont;
	cont = 0;
	}
}				
