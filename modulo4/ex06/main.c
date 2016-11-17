#include <stdio.h>
#include "test_equal.h"

int main(void){

	char str1 [] = "Nova String";

	char str2 [] = "Nova String";

	printf("Primeira String: %s\n", str1);

	printf("Segunda String: %s\n", str2);

	int result;

	result = test_equal(str1, str2);

	if(result == 1){
	
	printf("As Strings são iguais\n");

	} else {

	printf("As Strings são diferentes\n");
	
	}

	char str3 [] = "Nova String Diferente";

	printf("Terceira String: %s\n", str3);

	result = test_equal(str1, str3);

	if(result == 1){

	printf("A String 1 e 3 são iguais\n");

	} else {

	printf("A String 1 e 3 são diferentes\n");
	
	}

return 0;

}
