.section .data

.section .text

	.global sum_n

sum_n:

	pushl %ebp
	movl %esp, %ebp

	movl 8(%ebp), %edx
	movl $0, %ecx
	movl $0, %eax	

	loop:
	
	addl %ecx, %eax
	
	cmpl %edx, %ecx
	je end
	
	incl %ecx	
	
	jmp loop
	
	end:
	movl %ebp, %esp
	popl %ebp
	ret

