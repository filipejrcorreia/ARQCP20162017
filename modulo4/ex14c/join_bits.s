.section .data

.section .text

	.global join_bits

join_bits:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl 8(%ebp), %ebx #Primeiro valor da stack é passado para ebx
	movl 12(%ebp), %edx #Segundo valor da stack é passado para edx
	movl 16(%ebp), %ecx #Terceiro valor da stack é passado para ecx

	cmpl $31, %ecx #Comparação para garantir que pos é menor que 32
	jg end 

	cmpl $0, %ecx #Comparação para garantir que pos é maior ou igual a 0
	jl end

	shr %cl, %edx #Shift de edx à direita cl posições

	shl %cl, %edx #Shift de edx à esquerda cl posições

	movb $31, %al #al passa a registar 31

	subb %cl, %al #al -cl, guardado no al

	movb %al, %cl #o valor de al passa para cl

	shl %cl, %ebx #shift à esquerda de ebx cl posições

	shr %cl, %ebx #Shift à direita de ebx cl posições

	orl %ebx, %edx #Uso de ebx como mascara logica de edx, os 0's passam a 1

	movl %edx, %eax #edx passa para eax para retornar

	end:
	pushl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

