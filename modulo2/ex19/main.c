#include <stdio.h>
#include "asm.h"

short temp1=0, temp2=0;
int res=0;

int main(void) {
  printf("Temperatura inicial: ");
  scanf("%hd",&temp1);
  printf("Temperatura final ");
  scanf("%hd",&temp1);
  res = contas();
  printf(" %d minutos para o sistema atingir a temperatura\n", res);
  return 0;
}
