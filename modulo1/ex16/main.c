# include <stdio.h>
# include "where_exists.h"

int main(void){	
	
	char str2[] = "The little red riding hood got lost";

	char str1[] = "hood got lost";

	char * ptr;

	ptr = where_exists(str1, str2);

	printf("Endereço: %p\n", ptr);

	while(*ptr != '\0'){

		printf("%c", *ptr);
		
		ptr++;
	}
	
	printf("\n");

return 0;
}
