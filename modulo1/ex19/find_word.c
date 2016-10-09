#include <stdio.h>


char* find_word(char* str, char* word, char* initial_addr){
	
	int i = initial_addr - str;
	int n = 0;
	char* end = NULL;
	
	while(*(str+i) != 0) { //ciclo repete-se ate acabar a frase
		if(*(word+n) != 0) { 
		  if(*(str+i) == *(word+n) || *(str+i)== *(word+n) + 32 || *(str+i) + 32 == *(word+n)  ){
				/* verifica se o carater da palvra coincide com o da frase
				 * se nao coincidir, n volta a 0
				 * se a palavra toda coincidar com a da frase
				 * dá return ao endereco */
				if(n == 0) end = &str[i];
				n++;
				
			} else {
				n= 0;
				end = NULL;
			}
		} else return end;
		i++;
	}
	return end;
	
}
