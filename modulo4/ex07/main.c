#include <stdio.h>
#include "asm.h"


int main(void) {
  int array[]={1,2,3,4,5,6,7,8,9,10};
  int n=10,i=0;
  int *ptr=array;
  printf("Numeros: \n");
  for (i = 0; i < n; i++)
  {
	printf(" %d",array[i]);  
  }
  
  printf("\n O numero de numeros impar é %d\n" ,count_odd(ptr,n));
  
  

 
  return 0;
}
