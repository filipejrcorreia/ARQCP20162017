#include <stdio.h>
#include "find_greater.h"
#include <stdlib.h>

int main(void){

	Student  s1;

	int i;

	int grades [] = { 19, 18, 15, 12, 12, 8, 16, 14, 14, 12};

	for(i = 0; i<10; i++){

	s1.grades[i] = grades[i];
	
	}

	int minimum = 12;

	int *greater_grades = NULL;

	greater_grades = (int * ) malloc (10 * sizeof(int));

	int num = find_greater(&s1, minimum, greater_grades);

	printf("As notas mais altas que %d são: ", minimum);

	for(i=0; i<num; i++){

		printf("%d ", *(greater_grades +i));
	}

	printf("\n");

	free(greater_grades);

return 0;

}
