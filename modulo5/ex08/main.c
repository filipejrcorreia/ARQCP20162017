#include <stdio.h>
#include "create_str.h"
#include <stdlib.h>

int main(void) {
	
	char str[80] = "O que é melhor que Star Wars? Star de férias!";
	
	char *str2 = create_str(str);

	printf("%s\n",str2);
	return 0;
}
