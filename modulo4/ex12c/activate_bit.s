.section .data

.section .text

	.global activate_bit

activate_bit:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl 8(%ebp), %edx #O primeiro parametro na stack, o apontador é passado para edx
	movl 12(%ebp), %ecx #O segundo parametro na stack, a posição a ativar é passada para ecx

	movl (%edx), %ebx #O valor apontado pelo apontador é passado para ebx

	cmpl $31, %ecx #Comparação para confirmar se o numero é menor ou igual a 31
	jg end #Se o numero for maior, o programa acaba

	cmpl $0, %ecx # Comparação para confirmar se o numero é maior ou igual a 0
	jl end #Se o numero for menor o programa acaba

	ror %cl, %ebx #Rotação de ebx, o numero apontado, cl casas para a direita

	movb $0b00000001, %al #O bit menos significativo de al passa a ser 1, e todos os restantes 0

	orb  %al, %bl #Utilização da mascara em al para ativar o bit menos significativo do valor atual de ebx

	rol %cl, %ebx #Rotação de ebx cl casas para a esquerda, o numero volta ao estado normal com o bit a ativar ativo, caso este não o estivesse

	cmpl (%edx), %ebx #Comparação de ebx, numero com bit ativo com o numero original
	je not_active #Se o numero for igual, o bit não foi ativo, porque já estava assim

	movl %ebx, (%edx) #Numero com bit ativo passa a ser o numero para o qual o apontador aponta
	movl $1, %eax #eax passa a 1, para fazer return, pois o bit foi ativo
	jmp end #Jump para end

	not_active: 
	movl $0, %eax #Como o bit não foi alterado, eax passa a ser 0

	end:
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

