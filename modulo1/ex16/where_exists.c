# include <stdio.h>

char* where_exists(char * str1, char * str2){

	char* temp1;
	char* temp2;
	char* first;
	
	temp1 = str1;
	
	temp2 = str2;
	
	while(*str2 != '\0' && first ==  NULL){
	
		if((*str2 == *str1 && first == NULL) || (*str2 - 32 == *str1 && first == NULL) || (*str2 == *str1 - 32 && first == NULL)){

			first = str2;
			temp2 = str2;
			while(*temp1 != '\0'){
			
				if( *temp1 != *temp2){
					
					first = NULL;
				}
			temp1++;
			temp2++;
	
			}
			temp1 = str1;
		}
	
		str2++;
	
	}

return first;
}
