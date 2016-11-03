#include <stdio.h>
#include "salario.h"

int code;
int atual;

int main(void) {
	
	code =101;
	atual = 1000;
	printf("Novo salario = %d", salario());	
	
	code =102;
	atual = 1700;
       	printf("Novo salario = %d", salario());
	
	code =103;
	atual = 1000;
	printf("Novo salario = %d", salario());
	
	code =100;
	atual = 1500;
	printf("Novo salario = %d", salario());
	return 0;
}


