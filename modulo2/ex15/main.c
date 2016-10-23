#include <stdio.h>
#include "mod.h"
#include "sub.h"
#include "div.h"
#include "sum.h"
#include "mul.h"


int valor=11, valor1=2; 

int main(void) {

  printf("Valores = %d e %d\n",valor,valor1);
  printf("Subtracao= %d-%d = %d\n",valor,valor1,sub());
   printf("Multiplicaçao= %dx%d = %d\n",valor,valor1,mul());
    printf("Soma= %d+%d = %d\n",valor,valor1,sum());
     printf("Divisao= %d/%d = %d\n",valor,valor1,div());
     printf("Modulus= %d/%d  resto=%d \n",valor,valor1,mod());

return 0;
}
