.section .data
	.global valor1
	.global valor

.section .text
	.global sum # int sum(void)


sum:
	

	movl $0,%eax
	movl valor,%eax
	addl valor1, %eax	

	ret
	
	
