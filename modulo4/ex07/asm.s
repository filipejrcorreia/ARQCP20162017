.section .text
	.global count_odd # int count_odd(int*ptr,int num)


count_odd:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	
	movl 8(%ebp),%ebx  		#primeiro parametro
	movl 12(%ebp),%edi		#segundo parametro
	
	movl $2,%ecx 			#mover 2 para ecx para dividir
		

	movl $0,%esi			# inciar esi, vai funcionar como contador
	movl $0, %edx			#por edx a 0 porque divisoes

	ciclo:
		decl %edi

			movl (%ebx,%edi,4),%eax   #passa o valor atual do vetor para eax
			divl %ecx                 #divide eax por 2
			cmpl $0,%edx 		   #se o resto for 0 é par
			jne continuar		#se o resto nao for 0, nao incremeta esi e salta
			incl %esi
	
	continuar:
		cmpl $0,%edi			# se ja tiver chegado a 0, ja correu o vetor todo
		jg ciclo
		movl %esi,%eax
	
	
fim:	

	# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	
	
