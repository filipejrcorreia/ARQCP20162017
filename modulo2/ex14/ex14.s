.section .data

	.global num

.section .text

	.global steps

steps:
	
	pushl %ebp
	movl %esp, %ebp

	movl num, %eax
	movl $1, %edx
	subl %edx, %eax
	movl $3, %ecx
	mull %ecx
	movl $12, %edx
	addl %edx, %eax
	movl $0, %edx
	divl %ecx
	movl $5, %edx
	addl %edx, %eax
	movl num, %ecx
	sub %ecx, %eax
	
	movl %ebp, %esp
	popl %ebp
	
	ret
