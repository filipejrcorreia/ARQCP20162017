#include <stdio.h>
#include "save_data.h"
#include <stdlib.h>

int main(void){

	Student p;

	int age, number;

	age = 22;

	number = 7438923;

	char name [] = "João Silva";

	char address [] = "Rua Académico Futebol Clube";

	save_data( &p, age, number, name, address);

	printf("O aluno nº %d, %s, com morada %s tem %d anos\n", p.number, p.name, p.address, p.age);


return 0;

}
