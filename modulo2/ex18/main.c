# include <stdio.h>
# include "factorial.h"

int n = 0;

int main(void){
	
	long long int res;
	res = 0;

	printf("Introduza o numero que pretende fatorizar:");
	scanf("%d", &n);

	res = factorial();

	printf("Número fatorizado: %lld\n", res);	

return 0;
}
