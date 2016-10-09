#include <stdio.h>

int contarCarater(char *str,char car,int *array){
	int i=0;
	int arrayLength=0;
	while((*(str+i))!=0){
		if ((*(str+i))==car||(*(str+i))==(car-32))
		{
			*(array+arrayLength)=i;
			arrayLength++;
		}
		i++;
	}
	return arrayLength;
}
