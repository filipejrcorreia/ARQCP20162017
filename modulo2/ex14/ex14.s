.section .datai

num:
	.int 0

	.global num

.section .text

	.global steps

steps:
	
	pushl %ebp
	movl %esp, %ebp

	movl num, %eax #passa num para o registo eax
	movl $1, %edx
	subl %edx, %eax #subtrai 1 a num
	movl $3, %ecx	
	mull %ecx	#multiplica num por 3
	movl $12, %edx
	addl %edx, %eax	#soma 12 a num
	movl $0, %edx
	divl %ecx	#divide num por 3
	movl $5, %edx
	addl %edx, %eax	#soma num por 5
	movl num, %ecx
	sub %ecx, %eax	#subtrai o num atual pelo num original
	
	movl %ebp, %esp
	popl %ebp
	
	ret
