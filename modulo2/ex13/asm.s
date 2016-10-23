.section .data
	.global valor
	.global valor1

.section .text
	.global operacao # int operacao(void)


operacao:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl b,%eax
	movl c,%ecx
	mull %ecx
	movl d, %ecx
	div %ecx
	addl %ecx,%eax
	


	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)	
	popl %ebp # restore the previous stack frame pointer
	ret
	
	
	
