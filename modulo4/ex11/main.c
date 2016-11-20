#include <stdio.h>
#include "rotates.h"


int main(void) {
  int num=1012,nbits=30;
	
	printf("O valor inical: %d\n",num);
	printf("O valor final rodado %d nbits para a esquerda é %d\n",nbits, rotateLeft(num,nbits));
		printf("O valor final rodado %d nbits para a direita é %d\n",nbits, rotateRigth(num,nbits));

 
  return 0;
}

