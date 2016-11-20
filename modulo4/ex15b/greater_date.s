.section .text 
.global greater_date #int greater_date(int date1,int date2)


greater_date:

	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for  function

	
	movl 8(%esp) , %edx			# mover data 1 para edx
	movl 12(%esp) , %esi			# mover data 2 para esi
	movl %edx , %edi			# por em edi edx
	movl %esi , %ecx 			# por em ecx esi

	andl $0x0000ffff , %edi			# ano da data 1
	andl $0x0000ffff , %ecx			# ano data 2

	cmpl %edi , %ecx 			# compara ano1 com ano2
	jg data2_maior				# se ano2 for maior salta para data2_maior
	jl data1_maior				# se ano2 for menos que ano1 salta para data1 maior
	je mes					# se for igual continua

mes:
	movl %edx , %edi			# poem em edi edx
	movl %esi , %ecx 			# poem em ecx esi	
	andl $0xff000000 , %edi			# mes data1	
	andl $0xff000000 , %ecx			# mes data2
	
	cmpl %edi , %ecx 			# compara mes1 com mes2
	jg data2_maior
	jl data1_maior
	je dia
	
dia:
	movl %edx , %edi			# poem em edi edx
	movl %esi , %ecx 			# poem em ecx , esi
	andl $0x00ff0000 , %edi			# dia data1	
	andl $0x00ff0000 , %ecx			# dia data2
	
	cmpl %edi , %ecx 			# compara dia1 com dia2
	jg data2_maior
	movl %edx , %eax			#é menor ou igual
	jmp fim	

data2_maior:
	movl %esi , %eax		# data2 para eax para ret
	jmp fim

data1_maior:
	movl %edx , %eax		# data 1 para eax para ret	
	

fim:
	# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame
	ret








