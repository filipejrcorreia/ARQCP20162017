#ifndef SAVE_DATA_H
#define SAVE_DATA_H

typedef struct {
	short w[3];
	int j;
	char c[3];
} s2;

void save_data(s2 *s, short vw[3], int vj, char vc[3]);

#endif
