#include <stdio.h>
#include "asm.h"

int valor=2147483647, valor1=3333333;
long long int res=0;

int main(void) {

  res=sumInt();
  printf("%lld",res);

return 0;
}
