#include <stdio.h>
#include "save_data.h"
#include <stdlib.h>

int main(void){


	int age, number;

	age = 11;

	number = 7438923;

	char name [] = "João Silva";

	char address [] = "Rua Académico Futebol Clube";
	
	int i=0;
	
	Student *st = NULL;

	st = (Student*) calloc(5, sizeof(Student));
	
	for (i = 0; i < 5; i++)
	{
		save_data( (st+i), age, number, name, address);
	}
	
	
	for(i =0 ; i<5 ; i++){
		printf("Numero: %d; Nome: %s; Morada: %s; Idade: %d\n", (st+i)->number, (st+i)->name, (st+i)->address, (st+i)->age);
	}
	
	free(st);
	



return 0;

}
