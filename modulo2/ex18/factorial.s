.section .data

n:
	.int 0

	.global n #numero a ser fatorizado

.section .text

	.global factorial

factorial:

	push %ebp
	movl %esp, %ebp

	movl $1, %eax
	movl $1, %ecx
	movl $0, %edx	
 
	loop:

	mull %ecx #multiplica eax com ecx
	
	cmpl n, %ecx #verifica se ecx é igual a n
	jge end_loop #jump if greater or equal

	incl %ecx #incrementa n
	jmp loop #volta ao inicio do loop

	end_loop:


	movl %ebp, %esp
	popl %ebp
	ret
