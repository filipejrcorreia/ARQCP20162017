#include <stdio.h>
#include "count_bits_zero.h"
#include "vec_count_bits_zero.h"

int main(void){

	int num = 9, total;

	int vec [] = {1,2,3,4,5,6,7,8,9};
	
	int * ptr;

	ptr = vec;

	total = vec_count_bits_zero(ptr, num);
	
	printf("O numero total de 0's em binário nesse vetor é: %d\n", total);

return  0;

}
