#include <stdio.h>
#include "lower_toUpper.h"

int main(void){

	char string[] = "Hello World!";

	printf("%s\n", string);
	
	lower_toUpper( string);

	printf("%s\n", string);
	
return 0;
}
