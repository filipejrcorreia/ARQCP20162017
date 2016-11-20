#include <stdio.h>

int activate_bits(int num, int left, int rigth)
{

int mascara=1,i=0;


for (i = 0; i < 32; i++){			//corre os 32 bits, i o i representa o bit que estamos (de 0 a 31)

	if (i<rigth){					//se tivermos num bit inferior ao limite direito 
		num|=mascara;				//ativamos o bit
		mascara=mascara*10;			//mascara é multiplicada por 10 para o "1" avançar uma posicao (acompanhar o i)
		
	}else{
		
		if (i>left){				//se tivermos num bit superior ao limite direito
			
		num|=mascara;				//ativavamos o bit
		mascara=mascara*10;			//mascara é multiplicada por 10 para o "1" avançar uma posicao (acompanhar o i)
		
		}else{
					mascara=mascara*10;			//se tivermos entre o limite direito e esquerdo, mascara é multiplicada por 10 para o "1" avançar uma posicao (acompanhar o i)
		}
	
	
	
	
}
}
return num;

}

