#include <stdio.h>

char* find_word(char* str, char* word, char* initial_addr);

int main(void){

	char str[100] = "Bar nos vamos AO bar ";
	char word[100] = "vamos";
	char *initial_addr = (str+0);
    char *endereco = find_word( str, word,  initial_addr);

	if(endereco == NULL){ 
		printf("A palavra não existe\n");
	} else {
		printf("Endereço inicio palavra = %p\n", endereco);
		printf("%c\n",*endereco);
	}
	
	return 0;
}
