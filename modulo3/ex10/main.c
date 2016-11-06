#include <stdio.h>
#include "asm.h"

char * ptr1; 
char * ptr2; 
char * ptr3;

/* Concatena a string1 e a string2, na 3.*/
int main(void){
	
  char string1[40] = "Isep é a melhor";
	
	char string2[40] = " instituiçao do pais ";
	
	char string3[80] = ""; // String final
	
	ptr1 = string1;
	printf("Frase 1: %s\n", ptr1);
	ptr2 = string2;
	printf("Frase 2: %s\n", ptr2);
	ptr3 = string3;
	
	str_cat(); //concatena as duas strings
	printf("Frase concatenada: %s\n", ptr3); // resultado final
	
	return 0;
}
