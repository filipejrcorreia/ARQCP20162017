.section .data
	.global ptr1 # ptr1 global 
	.global ptr2 # #ptr2 global

.section .text
	.global str_copy_p2 # void str_copy_p2(void)


str_copy_p2:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl ptr1 ,% esi # copiar str1 address para % esi
	movl ptr2 ,% edi # copiar str2 address para % edi

	

str_loop :

	movb (%esi) ,% cl #copiar primeiro carater para cl
	cmpb $98 ,%cl  #ver se o carater é 'b'
	je substitui   #se for substitui por 'v'
	
	cmpb $118, %cl #ver se o caracter é 'v'
	je substitui2 #se for substitui por 'b'
	
	movb %cl ,(%edi) #se nao for, adicionar o carater á nova string

continuar:

	cmpb $0 ,% cl #verifica se é o fim da string
	jz str_loop_end  #se for termina
	
	incl % esi # move to the next char in str1 #incrementa, passado para o proxim carater
	incl % edi # move to the next char in str2 #incrementa, passado para o proxim carater

	jmp str_loop # next iteration


	

substitui:
	movb $118 ,(%edi) # adiciona o carater 'v' á nova string
	jmp continuar

substitui2:
	movb $98, (%edi) #adiciona o carater 'b' à nova string
	jmp continuar
	
str_loop_end : 

# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
