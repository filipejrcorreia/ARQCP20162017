.section .data
.global code
.global atual

.section .text
.global salario # int salario(void)

salario:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl code, %edx
	movl atual, %eax
	
	cmpl $101, %edx
	je manager
	
	cmpl $102, %edx
	je engenheiro
	
	cmpl $103, %edx
	je tecnico
	
	addl $50, %eax
	jmp jmp_end
	
manager:
	addl $100, %eax
	jmp jmp_end
	
engenheiro:
	addl $200, %eax
	jmp jmp_end
	
tecnico:
	addl $150, %eax
	
jmp_end:

	
	
	
	
jmp_end:
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret



