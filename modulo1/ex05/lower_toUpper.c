#include <stdio.h>

void lower_toUpper(char * str){

		

	while( *str != '\0'){

		if( *str > 'a' && *str < 'z'){
		
			*str = *str - 32;
		}
	str++;
	}
}
