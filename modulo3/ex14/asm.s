.section .data
	
	.global ptrvec1 # ptrvec1 global 
	.global ptrvec2 # ptrvec2 global 
	.global ptrvec3 # ptrvec3 global 
	
	.global num   #tamanho vetor


.section .text
	.global vec_diff # int vec_diff(void)
	.global exists#int exists(void)
	

vec_diff :
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl ptrvec1 ,% esi # copiar int address para % esi
	movl ptrvec3, % edx
	movl num, %ecx	   #mete o tamanho do vetor em ecx
	movl $0, %ebx      #inicia ebx
	
	

condicao :
	push %ebx
	push %edx
	push %eax
	call exists
	cmpl $0,%eax
	popl %eax
	popl %edx
	popl %ebx
	je nao_existe
continuar:
	addl $2, %esi
	decl %ecx
	cmpl $0, %ecx
	je loop_end
	jmp condicao

nao_existe:
	movl (%esi),%edx
	addl $4, %edx
	incl %ebx
	jmp condicao
	
exists:
	movl ptrvec2 ,%edx
	movl num,%ecx
	movl $0,%eax
	movl (%edx), %ebx
	cmpl (%esi),%ebx
	je existe
	cmpl $0, %ecx
	decl %ecx
	je loop_end
	addl $2,%edx
	jmp exists
	

existe:
	movl $1, %eax
	ret


loop_end : 

# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	
	
