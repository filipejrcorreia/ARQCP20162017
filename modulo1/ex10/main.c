# include <stdio.h>
# include "even_sum.h"

int main(void){

	int n;

	n = 0;
	
	int vec[] = {9, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	
	n = even_sum(vec);

	printf("A soma dos numeros pares é: %d\n", n);

return 0;
}
