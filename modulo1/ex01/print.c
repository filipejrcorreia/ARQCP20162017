# include <stdio.h>

void print(int x, int * xPtr, float y, int * vec){
	
	int * v;
	
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

}
