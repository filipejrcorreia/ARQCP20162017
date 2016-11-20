#include <stdio.h>

void add_byte(char x, int *vec1, int *vec2){	
	
	int i=0;
	
	int numElementos = vec1[0];						//guarda o tamanho do vetor

	
	vec1[0] = numElementos;							//mete o tamanho do vetor na primeira posicao
	
	for(i=1 ; i < numElementos+1 ; i++){			//corre o vetor
		
		int valorVec1 = *(vec1+i);						//guarda o primeiro valor apontado


		int byte = ((valorVec1+x) & 0x000000ff);			//soma o valor ao x, mas mete tudo a 0 expceto o 1 byte
		
		int numFinal = (vec1[i] & 0xffffff00) | byte;		//mete o primeiro byte a 0, e substitui pelo valor de cima
		vec2[i] = numFinal;									//guarda no segundo vetor

		
		
	}
	

}
