#include <stdio.h>
#include "count_words.h"

int main(){
	
	int words;	

	char str[] = "Where do we go now?";

	words = count_words(str);
	
	printf("Numero de letras introduzidas na frase: %u" , words);
		
return 0;
	
}
