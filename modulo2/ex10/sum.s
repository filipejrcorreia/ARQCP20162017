.section .data

op1:
	.int 0
op2:
	.int 0
of:		#overflow flag status
	.int 1
cf:		#carry flag status
	.int 1

	.global op1
	.global op2
	.global of
	.global cf

.section .text

	.global sum
	
sum:
		
	pushl %ebp
	movl %esp, %ebp

	movl op1, %ebx
	movl op2, %eax
	adcl %ebx, %eax
	
	jc overflow	#jump if carry 
	movl $0, cf	

	overflow:	
	
	jo fim		#jump if overflow	
	movl $0, of

	fim:
	
	movl %ebp, %esp
	popl %ebp

	ret
