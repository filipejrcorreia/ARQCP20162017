#include <stdio.h>
#include "save_data.h"
#include <string.h>

void save_data(Student * p, int age, int number, char *name, char *address){

	p->age = age; /*Passa age, que é recebido como parametro para age da estrutura de dados student*/
	p->number = number; /*Passa number, que é recebido como parametro para number da estrutura de dados student*/
	strcpy(p->name, name);
	strcpy(p->address, address);

}
