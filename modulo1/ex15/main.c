#include <stdio.h>
  

void generate_random_numbers(int * vec);
int increase_number_sets(int*vec);

int main(void)
{
	int vec2[100];
	int *vec = vec2;
	int i;
	generate_random_numbers(vec);
	
	printf("Vetor gerado automaticamente: {");
	for(i = 0; i < 99; i++) printf("%d, ", vec2[i]); 
	printf("%d}\n", vec[99]);
	
	i = increase_number_sets(vec);
	
	printf("Existem %d conjuntos que satisfazem a condição\n", i);
	
	return 0;
}  
