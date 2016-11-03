#include <stdio.h>
#include "space_count.h"

char * ptr1 = 0;

int main(void){

	char string[100];

	printf("Introduza uma frase por favor: ");
	
	fgets(string, 100, stdin);

	ptr1 = string;

	int spaces = 0;

	spaces = space_count();

	printf("Esta frase tem %d espaços\n", spaces);

return 0;

}
