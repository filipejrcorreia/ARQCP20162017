#include <stdio.h>
#include "asm.h"


int main(void) {
  int num1=5, num2=2,num3=4;
  
  int *ptr=&num2;
  
  printf("Valor a= %d, o valor b= %d , o valor c= %d\n O valor da operacao ((b)-a)*c = %d\n", num1,num2,num3,calc(num1,ptr,num3));

  
  

 
  return 0;
}
