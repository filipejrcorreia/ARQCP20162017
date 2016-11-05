.section .data
	.global ptrvec # ptrvec global 

.section .text
	.global vec_sum # int vec_sum(void)


vec_sum :
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl ptrvec ,% esi # copiar int address para % esi
	movl $11, %edx
	movl $0, %eax
	
	

loop :
	addl (% esi), %eax

	incl (% esi) #incrementa, passado para o proxim caraater
	decl % edx	
	cmpl $0, %edx
	je loop_end
	jmp loop
	
	
loop_end : 

# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	

	
	
	
