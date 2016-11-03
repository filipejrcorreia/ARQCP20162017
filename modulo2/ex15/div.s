.section .data
	.global valor
	.global valor1

.section .text
	.global div # int div(void)


div:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl $0, %edx
	movl valor,%eax
	movl valor1, %ebx
	div %ebx
	

	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)	
	popl %ebp # restore the previous stack frame pointer
	ret
	
	
