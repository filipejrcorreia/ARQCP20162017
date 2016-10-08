#include <stdio.h>
#include "palindrome.h"

int main(){
	char str[100] = "a man a plan a canal panama";

	int i = palindrome(str);

	if (i == 0) printf("Não é\n");

	if(i==1)printf("É\n");
	return 0;
}

