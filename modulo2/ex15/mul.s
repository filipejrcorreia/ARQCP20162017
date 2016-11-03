.section .data
	.global valor1
	.global valor

.section .text
	.global mul # int mul(void)


mul:
	

	movl valor1, %eax
	movl valor, %edx
	mull %edx
	
	
	ret
	
	
