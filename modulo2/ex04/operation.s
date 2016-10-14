.section .data
	.global op1
	.global op2
	.global res
	.equ CONST, 10
	
.section .text
	.global operation

operation:

	pushl %ebp
	movl %esp, %ebp
	movl op1, %eax
	movl $CONST, %ebx
	sub %ebx, %eax
	movl %eax, op1
	movl op2, %eax
	sub %eax, %ebx
	movl op1, %eax
	sub %ebx, %eax
	movl %eax, res
	movl %ebp, %esp
	popl %ebp
	ret
