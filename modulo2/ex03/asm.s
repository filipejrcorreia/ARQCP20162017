.section .data
	.global op1
	.global op2
	.global op3
	.global res

.section .text
	.global sum # int sum(void)
	.global sub # int sub(void)
sum:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	movl op1, %ebx #place op1 in ebx
	movl op2, %eax #place op2 in eax
	addl %ebx, %eax #add ebx to eax. Result is in eax
	movl %eax, res
	movl %ebp, %esp
	popl %ebp
	ret

sub:


	movl op1, %edx
	movl op2, %eax
	movl op3, %ecx
	addl %edx, %eax
	subl %ecx , % eax
	movl %eax , res
	ret
	
	
	
