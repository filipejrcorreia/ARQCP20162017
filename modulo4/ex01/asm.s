.section .data
	.global ptr1 # ptr1 global 

.section .text
	.global square # int square(int x)


square:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	
	movl 8(%ebp),%eax
	imull %eax,%eax

	# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	
	
