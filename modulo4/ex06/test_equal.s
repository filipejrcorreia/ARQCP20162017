.section .data

.section .text

	.global test_equal

test_equal:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	pushl %esi

	movl 8(%ebp), %edx #Primeiro parametro da stack para o registo edx
	movl 12(%ebp), %esi #Segundo parametro da stack para o registo esi
	movl $1, %eax
	movl $0, %ecx

	loop:

	movb (%edx), %bl
	movb (%esi), %cl
	
	cmpb %cl, %bl #Compara o valor apontado por esi com o valor apontado por edx
	jne different	#Se os valores forem diferentes dá-se um jump para different

	cmpb $0, %bl #Compara o valor apontado por edx com 0
	je end #Se o valor for 0 acaba o loop

	addl $1, %esi #Esi passa a apontar para o próximo indice do vetor
	addl $1, %edx #Edx passa a apontar para o próximo indice do vetor 

	jmp loop

	different:
	
	movl $0, %eax #O valor de eax passa a ser 1

	end:
	popl %esi
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
