.section .text

	.global change_address

change_address:

	pushl %ebp
	movl %esp, %ebp
	pushl %esi

	movl 8(%ebp), %esi #Move o apontador de s para esi
	movl 12(%ebp), %ecx #Move o apontador de new address para ecx
	

	loop:
	
	movb (%ecx), %dh #Move o valor no endereço de ecx para dh

	movb %dh, 128(%esi) #Move o valor de dh para o valor ADDRESS_OFFSET(%esi)

	addl $1, %ecx #Soma 1 a ecx porque aponta para um vetor de chars
	addl $1, %esi #Soma 1 a esi porque vai ser usado num vetor de chars na estrutura Student

	cmpb $0, %dh #Compara dh a 0, para verificar se foi alcançado o fim da string
	je end

	jmp loop 

	end:
	popl %esi
	movl %ebp, %esp
	popl %ebp
	ret

