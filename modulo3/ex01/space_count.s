.section .data

.global ptr1

.section .text

.global space_count

	space_count: 
	
	pushl %ebp
	movl %esp, %ebp

	movl ptr1, %ecx

	movl $0, %eax

	movl $0, %ebx	

	loop:

	movb (%ecx), %bl
	
	cmpb $0, %bl
	je end

	cmpb $32, %bl
	je space

	add $1, %ecx

	jmp loop

	space:

	addl $1, %eax
	
	add $1, %ecx;
	
	jmp loop	

	end:	

	movl %ebp, %esp
	popl %ebp
	ret
