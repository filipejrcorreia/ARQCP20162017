.section .data

.section .text

	.global sum_multiples_x

sum_multiples_x:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	pushl %esi

	movl 8(%ebp), %edx #Primeiro parametro da stack passa para edx
	movl 12(%ebp), %ecx #Segundo parametro da stack passa para ecx

	movb %ch, %cl #Passa o segundo byte menos significativo de x para o primeiro

	movb $0, %ch #Deixa o segundo byte menos significativo de x a 0

	movl $0, %esi
	movl $0, %eax

	loop:

	movb (%edx), %al #O valor atual apontado por edx passa para al

	divb %cl #Faz-se a divisão com ax para confirmar se é multiplo

	cmpb $0, %ah #Compara o resultado da divisão
	je sum #Se o numero for multiplo, soma-se

	movl $0, %eax 

	midloop:

	incl %edx #Incrementa 1 a edx que passa para o proximo indice do vetor, pois é um vetor de chars

	cmpb $0, (%edx) #Compara o valor apontado por edx a 0 para acabar o programa
	jne loop

	end: 

	movl %esi, %eax #Move esi para eax para retornar
	
	popl %esi
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

	sum:

	movb (%edx), %al #Move o valor apontado por edx para al

	addl %eax, %esi #Soma eax a esi

	jmp midloop
