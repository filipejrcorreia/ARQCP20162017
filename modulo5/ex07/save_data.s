.section .text

	.global save_data

save_data:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl 8(%ebp), %eax
	movl 12(%ebp), %edx
	movl $3, %ecx

	w:

	movw (%edx), %bx
	movw %bx, 0(%eax)
	addl $2, %edx
	addl $2, %eax

	loop w

	addl $2, %eax

	movl 16(%ebp), %edx

	movl %edx, (%eax)

	addl $4, %eax
	
	movl $3, %ecx
	
	movl 20(%ebp), %edx
	
	movl $0, %ebx

	c:

	movb (%edx), %bh
	movb %bh,(%eax)
	incl %eax
	incl %edx

	loop c

	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

