#include <stdio.h>

void swap(int*vec,int*vec2,int size);

int main(){
  int size=10;
	int vetor[10] ={1,2,3,4,5,6,7,8,9,10};
	int vetor2[10]={11,12,13,14,15,16,17,18,19,20};
	int i=0;
	int*ptr=vetor;
	int*ptr2=vetor2;

	/*Impressao dos vetores inciais*/
	
	printf("%s","Vetor 1 inicial {");
	
	for(i=0;i<10;i++){
	  printf("%d%s",vetor[i]," , ");
	  
	}
	
	printf("%s\n","}");
	printf("%s","Vetor 2 inicial {");
	
	for(i=0;i<10;i++){
	  printf("%d%s",vetor2[i]," , ");
	  
	}
	
	printf("%s\n","}");
	
	/*Trocar valores vetores*/
	
	swap(ptr,ptr2,size);

	/*Impressao vetores finais*/
	
	printf("%s","Vetor 1 final {");
	for(i=0;i<10;i++){
	  printf("%d%s",vetor[i]," , ");
	  
	}
	printf("%s\n","}");
	printf("%s","Vetor 2 inicial {");
	for(i=0;i<10;i++){
	  printf("%d%s",vetor2[i]," , ");
	  
	}
	printf("%s\n","}");

	return 0;
}
