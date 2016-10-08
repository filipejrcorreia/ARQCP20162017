#include <stdio.h>

int check_condition_sets(int *vec, int i);

int increase_number_sets(int*vec)
{
	int n= 0, i, x;
	printf("Conjuntos de numeros que satisfazem a condição:\n");
	for(i = 0; i < 98; i++){
		x = check_condition_sets(vec,i);
		
		if(x == 1) n++; /* se o metodo chamado acima returnar 1, significa
						 * que a condição foi satisfeita entao aumenta o
						 * numero de conjuntos que satisfazem essa condição*/
	}
	return n;
}
