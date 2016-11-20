.section .text
.global add_byte  # void add_byte(char x, int *vec1, int *vec2)

add_byte:

	#prologo
	pushl %ebp
	movl %esp , %ebp

	movl 8(%ebp) , %eax		# mover o valor do x para o registo %eax
	movl 12(%ebp) , %esi		# mover o valor do *vec1 para o registo %esi
	movl 16(%ebp) , %edi		# mover o valor do *vec2 para o registo %edi
	
	mov (%esi) , %ecx 		# primeira posição de %esi para o registo %ecx
	
	movl %ecx , (%edi) 		# numero de elementos do vetor para a primeira posição de %edi 	

	addl $4, %edi				# passar para a segunda posicao em edi
	addl $4 ,%esi				# passar para a 2 posicao em esi
	
	soma:
		cmpl $0, %ecx
		je fim
		
		movl (%esi) , %edx	# mover atual valor apontado por esi para edx

		addl %eax , %edx 		# somar o x com o valor de edx
		
		andl $0x000000ff , %ebx 	# aplicar a mascara para ficar so com o byte menos significativo

		movl (%esi), %ebx		

		andl $0xffffff00 , %ebx		# por a 0 o primeiro byte de ebx
		
		orl %ebx ,%edx			# por no primeiro byte de ebx o resultado da soma 
		
		movl %edx , (%edi)		# mover o resultado para vec2		
	
		addl $4 , %esi			# incrementar para a proxima posicao do vetor
		addl $4 , %edi		# inrementar para a proxima posicao do vetor
		decl %ecx			#decrementar ecx
	
	jmp soma

fim:
	#epilogo
	movl %ebp , %esp
	popl %ebp
ret
