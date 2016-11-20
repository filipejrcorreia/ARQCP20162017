.section .text
	.global calc # int calc(int num1, int *ptr, int num2)


calc:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	
	movl 8(%ebp),%edx  		#primeiro parametro
	movl 12(%ebp),%ebx		#segundo parametro	
	movl 16(%ebp),%eax
	subl $4 ,% esp # reserves space for a local variable


	movl (%ebx),%esi		#coloca o valor apontado em esi
	subl %edx,%esi			#subtrai b-a
	movl %esi,-4(%ebp)		#coloca o resultado numa variavel local
	mull -4(%ebp)			#multiplic c(eax) pelo resultado obtiado anteriormente
		
	
fim:	

	# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	
	
