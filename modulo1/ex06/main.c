#include <stdio.h>
#include "power_ref.h"

int main(void){
	
	printf("%s\n", "Introduza a base: ");
	
	int x = 0;
	
	scanf("%d", &x);

	printf("%s\n", "Introduza o expoente: ");

	int y = 0;

	scanf("%d", &y);

	power_ref( &x, y);

	printf("%d\n", x);

return 0;

}
