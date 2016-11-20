#include <stdio.h>



int rotateRight(int numero, int nbits) {
    return (numero >> nbits) | ((numero << (0x1F & (32 + ~nbits + 1))) & ~(0xFFFFFFFF >> nbits));


}
