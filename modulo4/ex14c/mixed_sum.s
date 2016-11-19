.section .data

.section .text

	.global mixed_sum

mixed_sum:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	pushl %esi

	movl 8(%ebp), %ecx #O valor de a fica no registo ecx
	movl 12(%ebp), %edx #O valor de b fica no registo edx
	movl 16(%ebp), %ebx #O valor de pos fica no registo ebx

	pushl %ebx #ebx é enviado como parametro para a stack
	pushl %edx #edx é enviado como parametro para a stack
	pushl %ecx #ecx é enviado como parametro para a stack
	call join_bits #Chamada à função join_bits
	popl %ecx #restaura o valor de ecx e soma 4 a esp
	popl %edx #restaura o valor de edx e soma 4 a esp
	addl $4, %esp #Soma 4 a esp pois ebx não é restaurado na propria função

	movl %eax, %esi #Move o valor de eax, retorno de join_bits para esi

	pushl %ebx #ebx é enviado como parametro para a stack
	pushl %ecx #ecx é enviado como parametro para a stack
	pushl %edx #edx é enviado como parametro para a stack
	call join_bits # Chamada à função join_bits
	popl %edx #restaura o valor de edx e soma 4 a esp
	popl %ecx #restaura o valor de ecx e soma 4 a esp
	addl $4, %esp #Soma 4 a esp pois ebx não é restaurado na propria função

	addl %eax, %esi #Soma eax a esi

	movl %esi, %eax #Move o valor para eax para que se efectue o return

	popl %ebx
	popl %esi
	movl %ebp, %esp
	popl %ebp
	ret

