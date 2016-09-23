#include <stdio.h>
#include <limits.h>
#include <float.h>

int main(){

	printf("Char size %u", sizeof(char));
	printf("\nInt size %u", sizeof(int));
	printf("\nLong size %u", sizeof(long));
	printf("\nLong Int size %u", sizeof(long int));
	printf("\nFloat size %u", sizeof(float));
	printf("\nDouble size %u", sizeof(double));

	return 0;
}
