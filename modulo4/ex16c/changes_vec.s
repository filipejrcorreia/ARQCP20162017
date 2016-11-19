.section .data

.section .text

	.global changes_vec

changes_vec:

	pushl %ebp
	movl %esp, %ebp

	movl 8(%ebp), %edx #O primeiro parametro da stack é passado para edx 
	movl 12(%ebp), %ecx #O segundo parametro da stack é passado para ecx

	change:

	pushl %ecx #Guarda o valor de ecx na stack, para garantir que não se altera no call da função
	pushl %edx #Guarda o valor de edx na stack para ser usado como parametro
	call changes #Executa a função changes
	popl %edx #Restaura o valor de edx
	popl %ecx #Restaura o valor de ecx

	addl $4, %edx #Adiciona 4 a edx para e este passa a apontar para o proximo indice de vec

	loop change #Decrementa ecx até este atingir 0

	movl %ebp ,%esp
	popl %ebp
	ret	

