# include<stdio.h>

void capitalize( char * string){

	char * ptr;

	ptr = string;

	while( *string != '\0'){
		
		if( string == ptr && *string > 'a' && *string < 'z'){
		
			*string = *string - 32;

		}

		if( *(string - 1) == ' ' && *string > 'a' && *string < 'z'){
			
			*string = *string - 32;

		} 
		
	string ++;
	}

	string = ptr;
}
