#include <stdio.h>
#include "save_data.h"

int main(void){

	int vj = 5;

	short vw [3] = {4, 2, 6};

	char vc [3] = "New";

	s2 s;

	save_data( &s, vw, vj, vc);

	printf( "j = %d\n", s.j);
	
	printf( "w1 = %d, w2 = %d, w3 = %d\n",s.w[0], s.w[1], s.w[2]);

	printf( "c = %s\n", s.c);

return 0;

}
