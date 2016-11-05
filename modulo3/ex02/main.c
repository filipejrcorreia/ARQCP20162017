#include <stdio.h>
#include "asm.h"

char str1 [] = "Arroz com batatas é uma beldade";
char* ptr1=str1;
char str2 [30];
char* ptr2=str2;


int main(void) {
  ptr1 = str1 ;
  ptr2 = str2 ;
  printf("String incial: %s\n",str1);
  str_copy_p();
  printf("String final: %s\n",str2);
 
  return 0;
}
