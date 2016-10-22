.section .data

	.global n
	.global A
	.global B
	
i:
	.int 1
temp:
	.int 0


.section .text

	.global sommation

sommation:

	pushl %ebp
	movl %esp, %ebp
	
	movl $0, %edx
	movl $0, %ebx
	movl A, %eax
	movl B, %ecx
	divl %ecx

	movl i, %ecx	

	movl %eax, temp	

	loop:

	movl temp, %eax
		
	mull %ecx

	addl %eax, %ebx
	
	cmpl n, %ecx
	jge end_loop
	
	addl $1, %ecx
	jmp loop

	end_loop:
	
	movl %ebx, %eax

	movl %ebp, %esp
	popl %ebp

	ret
