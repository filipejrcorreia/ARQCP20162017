.section .text

	.global save_data

save_data:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl 8(%ebp), %eax #Passa o primeiro parametro para eaz
	movl 12(%ebp), %edx #Passa o segundo parametro para edx
	movl $3, %ecx #Passa 3 para ecx para ser decrementado

	pushl %ecx #Guarda ecx para uso futuro
	w:

	movw (%edx), %bx #Move o valor apontado por edx para bx
	movw %bx, (%eax) #Move o valor em bx para o endereço de eax
	addl $2, %edx #Soma 2 a edx para passar ao próximo indice do vetor
	addl $2, %eax #Adiciona 2 a eax para passar ao próximo indice do vetor da estrutura

	loop w

	addl $2, %eax #Soma 2 a eax e este passa a pontar para j da estrutura s2

	movl 16(%ebp), %edx #Move o valor do 3o parametro para edx

	movl %edx, (%eax) #Move edx para o endereço de eax

	addl $4, %eax #Soma 4 a eax, passa a apontar para o vetor de chars da estrutura
	
	movl 20(%ebp), %edx #Move o quarto parametro para edx
	
	movl $0, %ebx #ebx passa a 0
	
	popl %ecx #Restaura ecx

	c:

	movb (%edx), %bh #Move o valor apontado por edx para bh
	movb %bh,(%eax) #Move o valor em bh para o endereço de eax
	incl %eax #Incrementa eax
	incl %edx #Incrementa edx

	loop c #Decrementa ecx enquanto faz loop de c

	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

