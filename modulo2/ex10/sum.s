.section .data
	
	.global op1
	.global op2
	.global of
	.global cf

.section .text

	.global sum
	
sum:
		
	pushl %ebp
	movl %esp, %ebp

	movl op1, %ebx
	movl op2, %eax
	adcl %ebx, %eax
	
	jc output_carry
	movl $0, cf
	jmp overflow

	output_carry:
	movl $1, of
	
	overflow:
	
	jo with_overflow
	movl $0, of
	jmp fim

	with_overflow:
	movl $1, of

	fim:
	
	movl %ebp, %esp
	popl %ebp

	ret
