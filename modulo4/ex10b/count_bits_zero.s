.section .data

.section .text

	.global count_bits_zero


count_bits_zero:


	pushl %ebp
	movl %esp, %ebp

	movl 8(%ebp), %eax
	movl $32, %ecx
	movl $0, %edx

	count:

	shr %eax

	jc skip
	
	incl %edx
	
	skip:

	loop count
	
	movl %edx, %eax
	movl %ebp, %esp
	popl %ebp
	ret

