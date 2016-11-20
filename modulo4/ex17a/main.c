#include <stdio.h>
#include "add_byte.h"

int main(void){

char x = 2;
int v1 []  = {3,0xf00002fc,0x000003ff,0x00000400};
int v2 [4];

int * vec1 = v1;
int * vec2 = v2;

add_byte(x, vec1, vec2);
int i=0;

for (i = 0; i < v1[0]; i++)
{
	printf("Valor inicial na posicao %d é %x\n",i,vec1[i+1]);
	printf("Valor final na posicao %d é %x\n",i,vec2[i+1]);
}










return 0;
}
