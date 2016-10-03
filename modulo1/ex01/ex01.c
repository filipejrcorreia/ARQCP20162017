#include <stdio.h>

int main(void){

	int x = 5;
	int *xPtr = &x;
	float y = (*xPtr) + 3;
	int vec[] = {10,11,12,13};
	int *v;
	v = vec;
	
	printf("%d\n", x);
	printf("%f\n", y);
	printf("%p\n", &x);
	printf("%p\n", v);
	printf("%d\n", *(v++));
	printf("%d\n", *(v++));
	printf("%d\n", *(v++));
	printf("%d\n", *(v++));
	v = vec;

	printf("%p\n", v++);
	printf("%p\n", v++);
	printf("%p\n", v++);
	printf("%p\n", v++);

return 0;
}
