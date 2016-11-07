.section .data
	.global ptrvec # ptrvec global 
	.global ptrFinal # ptrvec1 global
	.global num   #tamanho vetor


.section .text
	.global ordenar # void ordenar(void)
	.global sort_without_reps # int sort_without_reps(void)
	

sort_without_reps:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl ptrvec ,% ecx # copiar int address para % ecx
	movl ptrFinal ,% edx # copiar int address para % ecx
	movl num,%ebx
	
	pushl %ecx
	pushl %eax
	pushl %edx
	call ordenar         #ordena o vetor
	popl %edx
	popl %eax
	popl %ecx

	movl $0, %esi
	movl (%ecx,%esi,4),%edi
	movl %edi,(%edx)                  #coloca o primeiro valor do vetor ordenado no vetor final
	movl $0, %edi
	incl %esi

ciclo:	                                              #esi funciona para correr o vetor ordenado incial, edi como contador de quantos foram adicionados ao final
	cmpl %esi,%ebx
	je end
		movl (%ecx,%esi,4),%eax
		cmpl (%edx,%edi,4),%eax               #compara o valor em que vai o vetor final ao atual do vetor incial (como é um vetor ordenado pode se fazer)
		je incr                   		#se for igual nao adiciona ao novo vetor, se for diferente adiciona
		incl %edi
		movl %eax,(%edx,%edi,4)


incr:
	incl %esi
	jmp ciclo

end : 
	incl %edi
	movl %edi,%eax

	# epilogue
		movl %ebp , % esp # restore the stack pointer (" clear " the stack )
		popl % ebp # restore the stack frame pointer
		ret # return from the function


ordenar:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	pushl %ebx
	pushl %esi
	pushl %edi
	movl $1, %eax
	movl $1, %edx
	
	
	loop:							#for
		cmpl %eax,%ebx					#vai se repetir num-1 vezes
		je fim
			movl $1,%edx				#incremeta o 'i'
			incl %eax
			movl ptrvec, %ecx			#volta a por o apontador incial em ecx
	
			loop2:					#segundo ciclo for que se vai repetir num-1 vezes
				cmpl %edx,%ebx
				je loop
					incl  %edx		#incrementa o 'j'
					movl (%ecx),%esi	
					cmpl %esi,4(%ecx)
					jl troca		#compara o atual valor com o proximo, se for menor troca
					
					continuar:
						addl $4,%ecx	#incrementa para o rpximo valor
						jmp loop2

	troca:
		movl (%ecx),%esi
		movl 4(%ecx),%edi
		movl %edi,(%ecx)
		movl %esi, 4(%ecx)
		jmp continuar		
	

	fim:
		popl %edi		#restaura valores
		popl %esi
		popl %ebx
	
	loop_end : 

	# epilogue
		movl %ebp , % esp # restore the stack pointer (" clear " the stack )
		popl % ebp # restore the stack frame pointer
		ret # return from the function
	


