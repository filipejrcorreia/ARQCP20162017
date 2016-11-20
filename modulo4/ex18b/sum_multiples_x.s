.section .data

.section .text

	.global sum_multiples_x

sum_multiples_x:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl 8(%ebp), %edx #Primeiro parametro da stack passa para edx
	movl 12(%ebp), %ecx #Segundo parametro da stack passa para ecx
	movl $0, %eax

	movb %ch, %cl #Passa o seguno byte menos significativo de x para o primeiro

	subb $1, %cl #Subtrai 1 a cl

	loop:

	movb (%edx), %bl #O valor atual apontado por edx passa para bl

	and %cl, %bl #Aplica-se a mascara lógica and para confirmar se o numero é multiplo

	cmpb $0, %bl #Compara o resultado da mascara lógica com 0
	je sum #Se o numero for multiplo, soma-se

	midloop:

	incl %edx #Incrementa 1 a edx que passa para o proximo indice do vetor, pois é um vetor de chars

	cmpb $0, (%edx) #Compara o valor apontado por edx a 0 para acabar o programa
	jne loop

	end:
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

	sum:
        movl $0, %ebx 

        movb (%edx), %bl #Move o char atual para bl

        addl %ebx, %eax #soma ebx a eax, o registo de return

        jmp midloop



