#include <stdio.h>

int contarLetras(char * str){
	int i=0;
	while(*(str+i)!=0){
	  
		i++;
	}
	return i;
}

int palindrome(char * str){
	int i=0;
	int j=0;
	j=contarLetras(str);
	while(i<j-1){
	 	
		if (*(str+i)==' ')
		{
			i++;
		}
		if(*(str+j-1)==' ')
		{
			j--;
		}
		if ((*(str+i)!=' ')&&(*(str+j-1)!=' '))
		{
		  
			if ((*(str+i))==(*(str+j-1)))
			{
			  
				i++;
				j--;
			}else{
				return 0;
			}
			
		}
		
	}
		return 1 ;
}
