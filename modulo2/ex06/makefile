ex06: main.o asm.o crossSumBytes.o
	gcc -Wall -g main.o asm.o crossSumBytes.o -o ex06

main.o: main.c asm.h crossSumBytes.h
	gcc -Wall -g -c main.c

asm.o: asm.s
	gcc -Wall -g -c asm.s

crossSumBytes.o: crossSumBytes.s
	gcc -Wall -g -c crossSumBytes.s

run: ex06
	./ex06

clean: 
	rm *.o ex06
