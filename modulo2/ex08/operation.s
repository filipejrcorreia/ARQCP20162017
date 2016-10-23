.section .data
A:
	.byte 0
B:
	.short 0
C:
	.int 0
D:
	.int 0

	.global A
	.global B
	.global C
	.global D

.section .text
 
.global op

op:
	pushl %ebp
	movl %esp, %ebp	

	movl $0, %eax	#evitar que os bits mais signifcativos estejam ocupados
	movl $0, %ecx

	movb A, %al	#A tem 8 bits, logo pode ficar em al
	movw B, %cx	#B tem 16 bits logo necessita de cx
	addw %ax, %cx
	movl C, %eax
	neg %eax
	addl %ecx, %eax
	movl $0, %edx
	movl D, %ecx
	addl %ecx, %eax
	
	movl %ebp, %esp
	popl %ebp

	ret 
