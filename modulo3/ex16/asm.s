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
	call ordenar
	popl %edx
	popl %eax
	popl %ecx



ciclo:	
	cmpl $0, %ebx
	je end
	decl %ebx
	pushl %ecx
	pushl %edx
	call existe
	popl %edx
	popl %ecx

	cmpl $0,%eax
	jne ciclo
	movl (%ecx),%esi
	movl %esi, (%edx)
	incl %ecx
	incl %edx
	jmp ciclo

	

existe:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	pushl %ebx
	pushl %esi
	pushl %edi
	movl num, %ebx
	movl ptrFinal, %edx
	for:
		cmpl $0,%ebx
		je nao_existe
		decl %ebx
			movl (%edx),%esi
			cmpl %esi,(%ecx)
			je sim
			incl %edx
			jmp for

	sim:
		movl $1,%eax
		jmp end
			
	nao_existe:
		movl $0, %eax
		
	end:
		popl %edi
		popl %esi
		popl %ebx

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
	


