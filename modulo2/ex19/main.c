
#include <stdio.h>
#include "asm.h"

short temp1=0, temp2=0;
int valor=0;

int main(void) {
  printf("Temperatura Inicial: ");
  scanf("%hd",&temp1);
  
  printf("Temperatura Final: ");
  scanf("%hd",&temp2);
  
  valor = operacao();
  printf(" %d minutos .\n", valor);
  return 0;
}
