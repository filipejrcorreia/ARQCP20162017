#include <stdio.h>
#include "even_printer.h"

int main(){

	int vec[] = {1,2,3,4,8,5,34,15,62364,432,64,53};

	int *pointer;

	pointer = vec;
	
	even_printer(pointer,12);

return 0;


}
