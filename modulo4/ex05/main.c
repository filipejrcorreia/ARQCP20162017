#include <stdio.h>
#include "asm.h"


int main(void) {
  int num1=23,num2=-6;
  int* ptr=&num1;
  printf("Numeros %d, %d\n", num1,num2);
  printf("O valor decrementado %d e o cubo do valor %d\n" ,num1, dec_cube(ptr,num2));
  
  

 
  return 0;
}
