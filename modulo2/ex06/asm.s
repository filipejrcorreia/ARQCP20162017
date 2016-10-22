.section .data
	.global res
	.global valor

.section .text
	.global swapBytes # int sum(void)


swapBytes:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movw valor, %ax
	movb %ah, %bl
	movb %al, %ah
	movb %bl, %al
	movw %ax, res
	


	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)	
	popl %ebp # restore the previous stack frame pointer
	ret
	
	
	
