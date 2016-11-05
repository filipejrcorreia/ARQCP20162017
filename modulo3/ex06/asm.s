.section .data
	.global ptr1 # ptr1 global 

.section .text
	.global encrypt # int encrypt(void)


encrypt:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl ptr1 ,% esi # copiar str1 address para % esi
	movl $0, % eax #iniciar eax
	

operaçoes:
	movb (% esi ) ,% cl #copiar primeiro carater para cl
	cmpb $32 ,% cl  #ver se o carater é espaço
	je continuar   #salta
	cmpb $48 ,% cl  #ver se o carater é 0
	je continuar   #salta
	incl %eax  #incrementa eax
	incl (%esi) #incrementa o carater

	cmpb $0 ,% cl #verifica se é o fim da string
	jz str_loop_end  #se for termina
continuar:
	incl % esi  #incrementa, passado para o proxim caraater

	jmp operaçoes # next iteration

	
str_loop_end : 

# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	
	
