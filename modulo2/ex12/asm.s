.section .data

	length:
		.int 0

	width:
		.int 0

	.global length
	
	.global width

.section .text
	
	.global getArea
	
	getArea:

	pushl %ebp
	movl %esp, %ebp
	
	movl $0, %edx	#inicializar os registos necessários a 0
	movl $0, %eax
	movl $0, %ecx
	movl length, %eax
	movl width, %ecx
	mull %ecx
	
	movl %ebp, %esp
	popl %ebp
	
	ret
