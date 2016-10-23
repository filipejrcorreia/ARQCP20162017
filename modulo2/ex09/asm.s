.section .data
	.global valor
	.global valor1

.section .text
	.global sumInt # long long int sumInt(void)


sumInt:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl $0, %eax
	movl valor, %eax
cltd
	addl valor1, %eax
	
	


	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)	
	popl %ebp # restore the previous stack frame pointer
	ret
	
	
	
