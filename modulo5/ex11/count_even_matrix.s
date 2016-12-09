.section .text

	.global count_even_matrix

count_even_matrix:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	pushl %esi
	pushl %edi

	movl $0, %esi #Move 0 para esi
	movl 8(%ebp), %eax #Move o primeiro parametro na stack para eax
	movl 12(%ebp), %ecx #Move o segundo parametro da stack para ecx

	y:
	movl 16(%ebp), %edx #Move o terceiro parametro da stack para edx 
	subl $1, %edx #Tira um a edx para evitar que o ciclo ocorra uma vez a mais
	movl (%eax), %ebx #Move o endereço do vetor apontado por eax para ebx

	k:

	movl (%ebx), %edi #Move para edi o valor apontado por ebx

	test $0b1, %edi #Testa com um and o numero em edi, para verificar e este é 1 ou 0, impar ou par 
	jz par #Se for par, esi é incrementado

	midk:

	cmpl $0, %edx #Compara 0 com edx para terminar o ciclo
	je midy

	addl $4, %ebx #Soma 4 a ebx para passar ao próximo indice
	decl %edx #decrementa edx

	jmp k
	midy:

	addl $4, %eax #Passa eax para o próximo indice do vetor

	loop y
	jmp end	

	par:

	incl %esi #incrementa esi
	
	jmp midk

	end:
	movl %esi, %eax
	popl %edi
	popl %esi
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

