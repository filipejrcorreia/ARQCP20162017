# include <stdio.h>


int rotateLeft(int x, int n) {
  return ((x << n) | (x >> (32 - n)));
}
int rotateRigth(int x, int n) {
  return ((x << n) | (x >> (32 - n)));
}
			
