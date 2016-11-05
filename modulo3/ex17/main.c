#include <stdio.h>
#include "frequencies.h"

int * ptrgrades;
int * ptrfreq;
int num;

int main(void){


	int grades [] = { 0 , 0 , 0 ,2, 4, 5, 20, 12, 16, 19, 11, 10, 17, 17};

	num = 14;

	int freq [21] = {0};

	ptrgrades = grades;

	ptrfreq = freq;

	frequencies();

	int i;

	for( i=0; i<21; i++){

	printf(" %d", *(ptrfreq +i));

	}
	
	printf("\n");

return 0;
}
