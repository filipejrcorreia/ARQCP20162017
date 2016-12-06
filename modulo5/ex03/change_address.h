#ifndef CHANGE_ADDRESS_H
#define CHANGE_ADDRESS_H

typedef struct {
	int age;
	int number;
	int grades[10];
	char name[80];
	char address[120];
} Student;

void change_address(Student * s, char *new_address);
#endif
