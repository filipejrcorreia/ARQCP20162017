# include <stdio.h>
# include <math.h>

void compress_shorts(short * shorts, int n_shorts, int * integers){

	int i;
	
	for(i = 0; i < n_shorts; i = i + 2){
		
		*( integers + (i/2) ) = *( shorts + i + 1) * pow(2, 16) + *( shorts + i);

	}
}
