#include <stdio.h>

void even_printer(int *pointer, int elements){

	int i;
	
	for(i =0; i< elements; i++){
	
		if((*pointer) % 2 == 0){
	
			printf("%d\n", *pointer);
		}
		
	pointer++;
	}
	
}
