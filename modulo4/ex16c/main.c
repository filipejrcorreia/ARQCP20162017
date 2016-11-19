#include <stdio.h>
#include "changes.h"
#include "changes_vec.h"

int main(void){

	int vec [] = { 456789, 48129, 9999, 13214};

	int * ptrvec;

	int num;

	num = 4;

	ptrvec = vec;

	printf("Vetor Original: { %d, %d, %d, %d }\n", *ptrvec, *(ptrvec+1), *(ptrvec+2), *(ptrvec+3));

	changes_vec(ptrvec, num);

	printf("Novo vetor: { %d, %d, %d, %d }\n", *ptrvec, *(ptrvec+1), *(ptrvec+2), *(ptrvec+3));
	
return 0;

}
