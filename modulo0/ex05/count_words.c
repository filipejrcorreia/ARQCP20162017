#include <stdio.h>

int count_words(char str[12]){

	int i = 0, words = 1;

	while(str[i] != '\0'){

		if(str[i]==' '){

			words++;
		}
	
	i = i+1;
	
	}

return words;

}
