#include <stdio.h>
#include "asm.h"


int main(void) {
  unsigned int num=102,left=16,right=5;
	
	printf("O numero inicial : %x\n",num);
	printf("O numero final com os bits a esquerda da posicao %d ativados e a direita da posicao %d ativados é %x\n", left,right,activate_bits(num,left,right));
	
 
  return 0;
}
