.section .data

.section .text

	.global activate_2bits

activate_2bits:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl 8(%ebp), %edx #Primeiro parametro passa da stack para edx
	movl 12(%ebp), %ecx #Segundo parametro passa da stack para ecx

	pushl %ecx #O valor de ecx é enviado para a stack para ser usado como parametro
	pushl %edx #O valor de edx é enviado para a stack para ser usado como parametro
	call activate_bit #A função activate_bit é utilizada 
	popl %edx #restaura o valor de edx e incrementa 4 a esp
	popl %ecx #restaura o valor de ecx e incrementa 4 a esp

	movl $31, %ebx #Passa 31 para o registo ebx

	subl %ecx, %ebx #Subtrai 31(ebx) por ecx

	movl %ebx, %ecx #passa o valor de ebx para ecx

	pushl %ecx  #O valor de ecx é enviado para a stack para ser usado como parametro 
	pushl %edx #O valor de edx é enviado para a stack para ser usado como parametro
	call activate_bit #A função activate_bit volta a ser utilizada
	popl %edx #Restaura o valor de edx e incrementa 4 a esp
	popl %ecx #Restaura o valor de ecx e incrementa 4 a esp

	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

