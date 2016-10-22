.section .data
	.global A
	.global B
	.global C
	.global D

.section .text
 
.global op

op:
	pushl %ebp
	movl %esp, %ebp
	movb A, %al
	movw B, %bx
	addw %ax, %bx
	movl C, %eax
	neg %eax
	addl %ebx, %eax
	movl $0, %edx
	movl D, %ebx
	addl %ebx, %eax
	
	movl %ebp, %esp
	popl %ebp

	ret 
