#include <stdio.h>
#include "changes.h"

int main(void){

	int num;

	int * ptr;

	printf("Introduza um número: ");

	scanf("%d", &num);

	ptr = &num;

	changes(ptr);

	printf("Novo número: %d\n", *ptr);

return 0;

}
