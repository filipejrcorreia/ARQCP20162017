#include <stdio.h>
#include "activate_bits.h"
#include "activate_invert_bits.h"


int main(void) {
	int num=102,left=15,right=4;
	
	printf("O numero inicial : %x\n",num);
	printf("O resultado ativado e posteriormente invertido é %x\n",activate_invert_bits(num,left,right));
	
 
  return 0;
}
