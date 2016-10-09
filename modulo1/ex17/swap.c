#include <stdio.h>

void swap(int* vec,int*vec2,int size){
	int i=0;
	int guardar=0;
	for (i = 0; i < size; i++)
	{
	guardar=*(vec+i);
	*(vec+i)=*(vec2+i);
	*(vec2+i)=guardar;	
	}
}
	
	
