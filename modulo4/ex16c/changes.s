.section .data

.section .text

	.global changes

changes:

	pushl %ebp
	movl %esp, %ebp

	movl 8(%ebp), %edx
	
	movl (%edx), %eax

	movb $0b00001111, %cl

	andb %cl, %ah

	cmpb $7, %ah
	jl end

	movl (%edx), %eax

	xorb %cl, %ah
	
	movl %eax, (%edx)

	end:
	movl %ebp, %esp
	popl %ebp
	ret

