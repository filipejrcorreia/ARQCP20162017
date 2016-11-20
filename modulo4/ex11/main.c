#include <stdio.h>
#include "rotateLeft.h"
#include "rotateRight.h"

int main(void){

	int num=0xfe00e, nbits=12;
	printf("Numero inicial: %x\n",num);
	
	printf("O numero %x rodado %d nbits para a esquerda é %x\n",num,nbits, rotateLeft(num,nbits));
	printf("O numero %x rodado %d nbits para a direita é %x\n",num,nbits, rotateRight(num,nbits));
	

return 0;

}
