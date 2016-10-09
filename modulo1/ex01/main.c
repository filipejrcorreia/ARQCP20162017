# include <stdio.h>
# include "print.h"

int main(void){

	int x = 5;
	int *xPtr = &x;
	float y = (*xPtr) + 3;
	int vec[] = {10,11,12,13};

	print( x, xPtr, y, vec);

return 0;
}
