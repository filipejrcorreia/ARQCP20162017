#include <stdio.h>
#include "asm.h"

int array [] = {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10 , 11};
int *ptrvec;


int main(void) {
  int i=0;
  ptrvec=array;
  printf("Array: {");
  for (i = 0; i < 11; i++)
  {
	  printf("  %d",array[i]);
  }
  printf("}\n");
  int sum=vec_sum();
  printf("Soma de todos os elementos: %d",sum);
 
  return 0;
}
