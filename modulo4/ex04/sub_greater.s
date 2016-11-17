.section .data

.section .text

	.global sub_greater

sub_greater:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl 8(%ebp), %ecx
	movl 12(%ebp), %edx
	movl 16(%ebp), %ebx
	
	cmpl %ecx, %edx
	jl smaller
	
	movl %ecx, (%ebx)
	subl %edx, %ecx
	movl %ecx, %eax

	jmp end

	smaller:
	
	movl %edx, (%ebx)
	subl %edx, %ecx
	movl %ecx, %eax

	end:
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
	
