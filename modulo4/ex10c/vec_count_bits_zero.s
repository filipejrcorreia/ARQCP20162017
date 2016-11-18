.section .data

.section .text

	.global vec_count_bits_zero

vec_count_bits_zero:

	pushl %ebp
	movl %esp, %ebp
	pushl %esi
	pushl %ebx

	movl 8(%ebp), %esi #Primeiro valor da stack, apontador do vetor passa para esi
	movl 12(%ebp), %ecx #Segundo valor da stack, numero de indices do vetor passa para ecx para o loop

	subl $1, %ecx #Subtrai-se um ao contador para evitar que haja um loop a mais

	count:

	movl (%esi), %edx #Passa o valor apontado por esi para edx

	pushl %ecx #Guarda ecx na stack para que o valor não seja alterado no call
	pushl %edx #Guarda edx na stack para que seja chamado como parametro
	call count_bits_zero #Call da função count_bits_zero
	popl %edx #Restaura o valor de edx
	popl %ecx #Restaura o valor de ecx

	addl $4, %esi #Avança para o proximo indice de vec

	addl %eax, %ebx #Adiciona eax a ebx

	loop count #loop baixa ecx até este atingir 0

	movl %ebx, %eax
	popl %esi
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

