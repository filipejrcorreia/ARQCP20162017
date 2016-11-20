#include <stdio.h>
#include "greater_date.h"

int main(void){

int data1 = 0x050F07CD; // 15/10/1997

int data2 = 0x0101007E0;	// 1/1/2016


printf("A data mais recente é: %x\n",greater_date(data1, data2));

return 0;
}
