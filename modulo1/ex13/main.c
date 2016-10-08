#include <stdio.h>

int main(){
  char str[12]="aaaaaaaa";
  int array[12];
  char carater='a';
  char *strA=str;
  int *arrayA=array;
  int arrayLength=0;
  arrayLength=contarCarater(strA,carater,arrayA);
  int i=0;
  for (i = 0; i < arrayLength; i++)
  {
	  printf("%d\n",arrayA[i]);
  }
  return 0;
}
	
