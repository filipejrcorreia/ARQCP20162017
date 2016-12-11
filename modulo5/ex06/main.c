#include <stdio.h>
#include "s1.h"
#include "save_data.h"

int main(void){

	s1 s;
	s1 *ptr = &s;
	int vi = 1;
	char vc = 'D';
	int vj = 12;
	char vd = 'B';

	save_data(ptr, vi, vc, vj,vd);

	printf("i: %d\n",ptr->i);
	printf("c: %c\n",ptr->c);
	printf("d: %c\n",ptr->d);
	printf("j: %d\n",ptr->j);


return 0;
}
