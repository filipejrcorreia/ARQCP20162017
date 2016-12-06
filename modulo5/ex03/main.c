#include <stdio.h>
#include "change_address.h"

int main(void){


	Student s;

	char new_address [] = "Novo endereço";

	change_address( &s, new_address);

	printf("Nova morada: %s\n", s.address);

return 0;
}
