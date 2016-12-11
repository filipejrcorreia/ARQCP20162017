#include <stdio.h>
#include <string.h>
#include "Student.h"
#include "save_grades.h"



int main(void){


	
Student a;
Student * ptr= &a;

int new_grades [10] ={15,16,17,18,19,13,15,18,20,10};
int* ptr2=new_grades;


save_grades(ptr , ptr2);

int i;
for(i=0 ; i < 10 ; i++){
	printf("Vetor: %d\n",a.grades[i]);
		
}


return 0;
}
