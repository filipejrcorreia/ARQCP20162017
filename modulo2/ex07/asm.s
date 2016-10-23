.section .data
	.global valor
	.global valor1

.section .text
	.global crossSumBytes # int sum(void)


crossSumBytes:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl $0 , %eax
	movw valor, %ax
	movw valor1, %bx
	addb %bh , %al
	addb %bl , %ah
	


	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)	
	popl %ebp # restore the previous stack frame pointer
	ret
	
	
	
