.section .data
	.global ptr1 # ptr1 global 

.section .text
	.global dec_cube # int square(int*ptr,int num2)


dec_cube:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	
	movl 8(%ebp),%ebx  		#primeiro parametro
	movl 12(%ebp),%ecx		#segundo parametro

	decl (%ebx)
	movl %ecx,%eax
	mull %ecx
	mull %ecx
	
	
fim:	

	# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	
	
