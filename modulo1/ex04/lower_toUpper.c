#include <stdio.h>

void lower_toUpper( char * str){
	int i;
	i=0;
	while(str[i] != '\0' ){
		if(str[i] > 'a' && str[i] < 'z'){
			str[i] = str[i] - 32;
		}
		i++;
	}

}
