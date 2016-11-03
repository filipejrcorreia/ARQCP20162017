.section .data
	.global t0
	.global t1
	.global indice

.section .text
	.global fibo # int fibo(void)


fibo:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl $0, %ecx
	movl t0, %eax
	movl t1, %ebx
	movl indice, %edx
	jmp loop

final:
	movl %ebx,%eax

	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)	
	popl %ebp # restore the previous stack frame pointer
	
	ret
	
loop:
	movl %eax, %esi
	addl %ebx, %esi
	movl %ebx, %eax
	movl %esi, %ebx
	
	addl $1, %ecx
	
	cmpl %edx,%ecx
	jl loop
	je final
	
	


	
	
	
