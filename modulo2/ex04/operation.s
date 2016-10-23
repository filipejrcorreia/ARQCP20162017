.section .data
op1:
	.int 0
op2:
	.int 0
res:
	.int 0

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
	movl $CONST, %ecx
	sub %ecx, %eax
	movl %eax, op1
	movl op2, %eax
	sub %eax, %ecx
	movl op1, %eax
	sub %ecx, %eax #subtração de eax (op1-const) com ecx (op2-const)
	movl %eax, res

	movl %ebp, %esp
	popl %ebp
	ret
