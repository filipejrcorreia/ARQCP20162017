#ifndef FIND_GREATER_H
#define FIND_GREATER_H

typedef struct {
	int age;
	int number;
	int grades[10];
	char name[80];
	char address[120];
} Student;

int find_greater( Student *s, int minimum, int *greater_grades);

#endif
