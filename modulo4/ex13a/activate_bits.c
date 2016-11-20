#include <stdio.h>

int activate_bits(int num, int left, int rigth)
{

int mascara=1,i=0;


for (i = 1; i < 33; i++){

	if (i<rigth){
		num|=mascara;
		mascara=mascara*10;
		
	}else{
		
		if (i>left){
			
		num|=mascara;
		mascara=mascara*10;
		
		}else{
					mascara=mascara*10;
		}
	
	
	
	
}
}
return num;

}

