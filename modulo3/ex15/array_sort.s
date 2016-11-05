.section .data
	
	.global ptrvec
	
	.global num

.section .text

	.global array_sort

array_sort:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	pushl %eci
	
	movl ptrvec, %ecx
	
	movl num, %eci

	loop:

	movl (%ecx), %ebx

	cmpl %ebx, 4(%ecx) 
	jl sort
	
	midloop:
	
	cmpl num, %edx
	je bubble

	addl $4, %ecx
	addl $1, %edx

	jmp loop

	bubble:
	
	movl %edx, %eax
	movl $0, %edx
	mull $4

	subl %eax, %ecx

	cmpl $0, %eci
	je end	

	cmpl %eci, 
	
	subl $1, %eci

	sort:

	movl 4(%ecx), %eax
	movl (%ecx), 4(%ecx)
	movl %eax, (%ecx)

	jmp midloop

	end:	

	popl %eci
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
