#include <stdio.h>
#include "fill_vector.h"
#include "calc_media.h"
#include "main.h"

int main(){

	int vec[30];
	
	int media;
	
	fill_vector(vec);
	
	media = calc_media(vec);
	
	printf("\n Média dos valores: %u", media);

return 0; 
}
