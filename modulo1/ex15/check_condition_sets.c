#include <stdio.h>

int check_condition_sets(int *vec, int i)
{
	if(vec[i] < vec[i+1] && vec[i+1] < vec[i+2]) /*condiçao pedida, dos tres numeros
												  *do conjunto o que tem indicie maior 
												  * tera de ter um valor maior tambem*/
	{
		printf("vec[%d] = %d - vec[%d] = %d - vec[%d] = %d\n", i, vec[i], (i+1), vec[i+1], (i+2), vec[i+2]);
		/*impressao de todos os conjuntos que satisfazem a condiçao
		 * de forma a atestar a funcionalidade do programa*/
		return 1;
	}
	return 0;
}
