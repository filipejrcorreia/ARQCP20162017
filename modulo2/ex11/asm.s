.section .data
	.global valor
	.global valor1

.section .text
	.global isMultiple # char isMultiple(void)


isMultiple:
	
	movl $0, %eax
	movl $0, %edx
	movl valor, %eax
	movl valor1 , %ecx
	idiv %ecx
	movl %edx,%eax
	
	ret
	
	
	
