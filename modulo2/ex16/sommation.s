.section .data

	.global n
	.global A
	.global B
	
i:
	.int 1
temp:
	.int 0


.section .text

	.global sommation

sommation:

	pushl %ebp
	movl %esp, %ebp
	
	movl $0, %edx
	movl $0, %ebx
	movl A, %eax
	movl B, %ecx
	divl %ecx	# passa A/B para o registo eax

	movl i, %ecx	

	movl %eax, temp	

	loop:		#Loop para realizar o somatório

	movl temp, %eax
		
	mull %ecx	#multiplica i por A/B

	addl %eax, %ebx	#somatório
	
	cmpl n, %ecx	#verifica se i é igual a n
	jge end_loop
	
	addl $1, %ecx
	jmp loop

	end_loop:	#o loop termina quando i for igualado a n
	
	movl %ebx, %eax

	movl %ebp, %esp
	popl %ebp

	ret
