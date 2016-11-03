.section .data
	.global valor1
	.global valor

.section .text
	.global mod # int mod(void)


mod:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl $0,%edx
	movl valor,%eax
	movl valor1, %ebx
	div %ebx
	pushl %edx
	movl %edx,%eax	

	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)	
	popl %ebp # restore the previous stack frame pointer
	ret
	
	
