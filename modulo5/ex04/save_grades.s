.section .data


.section .text

.global save_grades


save_grades:

	#prologo
	pushl %ebp
	movl %esp , %ebp


	movl 8(%ebp) , %ecx 	# estrutura para ecx
	movl 12(%ebp) , %edi 	# vetor notas para %edi


	addl $8 , %ecx		# mover para o inicio do vetor
	
	movl $10 , %ebx		# numero de elementos do vetor 

	ciclo:
	
		cmpl $0 , %ebx		# verificar se já chegou ao fim do vetor notas

		je fim
	
		movl (%edi) , %eax 		# mover o valor da posição de %edi para o registo %eax
		
		movl %eax , (%ecx)		# mover o valor da posição de vec para a estrutura 
		
		addl $4 , %ecx			
	
		addl $4 , %edi
	
		subl $1 , %ebx	



	jmp ciclo 	




fim:
#epilogo
movl %ebp , %esp
popl %ebp
