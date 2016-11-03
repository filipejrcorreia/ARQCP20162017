.section .data
	.global valor1
	.global valor

.section .text
	.global sub # int sub(void)


sub:
	

	movl $0,%eax
	movl valor,%eax
	movl valor1, %edx
	subl %edx, %eax
	
	
	ret
	
	
