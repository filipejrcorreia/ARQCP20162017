.section .text
	.global greater # int square(int num1,int num2, int num3)


greater:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	
	movl 8(%ebp),%eax  		#primeiro parametro
	movl 12(%ebp),%ebx		#segundo parametro
	movl 16(%ebp),%ecx		#terceiro parametro
	
	cmpl %ebx,%eax			#se eax nao for maior que ebx troca
	jge continuar
	movl %ebx,%eax			#o maior fica em eax da 1 comparaçao
continuar:
	cmpl %ecx,%eax			#se eax nao for maior que ecx troca
	jge fim
	movl %ecx,%eax			#o maior fica em eax da 2 comparaçao
	
fim:	

	# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	
	
