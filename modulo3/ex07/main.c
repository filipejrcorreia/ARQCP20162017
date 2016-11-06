#include <stdio.h>
#include "asm.h"

char str1 [] = "O numero inteiro mais baixo é o 0, depois é o 1";
char* ptr1=str1;



int main(void) {
  	
	int num=0;
 	ptr1 = str1 ;
 	num=encrypt();
	
	printf("String encriptada: %s\n",str1);

 	num = decrypt();

	printf("String original: %s\n Numero carateres alterados: %d\n", str1, num);

  return 0;
}
