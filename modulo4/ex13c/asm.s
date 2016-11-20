.section .data

	number:
		.int 1

.section .text
	.global activate_bits # int activate_bits(int num, int left, int right )



activate_bits:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	
	movl 8(%ebp),%eax  		#primeiro parametro  num
	movl 12(%ebp),%ebx		#segundo parametro   left
	movl 16(%ebp),%edx		#terceiro parametro  right
	movl $1,%esi
	movl $1,%edi

ciclo:
	
	cmpl %edx, %esi
	je continuar
	orl %edi, %eax
	imull $10,%edi
	incl %esi
	jmp ciclo

continuar:
	cmpl %ebx,%esi
	jg ciclo2
	imull $10,%edi
	incl %esi	
	jmp continuar

ciclo2:
	cmpl $32,%esi
	je fim	
	orl %edi, %eax
	imull $10,%edi
	incl %esi
	jmp ciclo2
	
fim:	

	# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame
	ret
