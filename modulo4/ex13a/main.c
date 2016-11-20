#include <stdio.h>
#include "activate_bits.h"


int main(void) {
   int num=102,left=15,right=4;
	
	printf("O numero inicial : %d\n",num);
	printf("O numero final com os bits a esquerda da posicao %d ativados e a direita da posicao %d ativados é %x\n", left,right,activate_bits(num,left,right));
	
 
  return 0;
}
