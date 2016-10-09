#include <stdio.h>

int check_condition_sets(int *vec, int i)
{
  if(vec[i] < vec[i+1] && vec[i+1] < vec[i+2]) /*condiçao pedida, dos tres numeros*/
												  
	{
		printf("vec[%d] = %d - vec[%d] = %d - vec[%d] = %d\n", i, vec[i], (i+1), vec[i+1], (i+2), vec[i+2]);

		return 1;
	}
	return 0;
}
