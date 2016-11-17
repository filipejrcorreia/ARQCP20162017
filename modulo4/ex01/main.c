#include <stdio.h>
#include "asm.h"


int main(void) {
	int num=0;
	for (num = -5; num <5 ; num++)
	{
		printf("O quadrado do numero %d é %d\n",num,square(num));
	}

 
  return 0;
}
