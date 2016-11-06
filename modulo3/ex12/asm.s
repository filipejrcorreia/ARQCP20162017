.section .data
	.global ptrvec # ptrvec global 
	.global num   #tamanho vetor


.section .text
	.global vec_zero # int vez_zero(void)
	

vec_zero :
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl ptrvec ,% esi # copiar int address para % esi
	movl num, %ecx	   #mete o tamanho do vetor em ecx
	movl $0, %eax      #inicia eax
	

condicao :
	cmpw $1000, (%esi)     #compara o valor com 1000
	jl continuar           #se for menor salta
	movw $0,(%esi)         #sendo maior ou igual a 1000 passa a 0
	incl %eax              #incrementa os numeros alterados
continuar:
	addl $2, %esi          #proxima posicao do vetor
	decl %ecx	       
	cmp $0, %ecx
	je loop_end
	jmp condicao


loop_end : 

# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	
	
