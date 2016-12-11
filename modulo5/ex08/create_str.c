#include <stdio.h>
#include "create_str.h"
#include <stdlib.h>

char *create_str(char str[80])
{
	int cont=0;
	
	while(str[cont]!='\0')				//conta numero de espaços realmente utilizadores
	{
		cont++;
	}
	
	
	char* str2 = (char*)malloc(cont * sizeof(char));	//cria string com o tamanho apenas necessario
		
	int i=0;
	
	for (i = 0; i < cont; i++)				//copia string antiga para nova
	{
		*(str2+i)=str[i];
	}
	*(str2+cont)='\0';
	
	return str2;
}

