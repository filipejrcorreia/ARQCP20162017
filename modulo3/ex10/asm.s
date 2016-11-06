
.section .data					# section identifier (data)


	.global ptr1					# declara a ptr1 como global para poder ser usada em C
	.global ptr2					# declara a ptr2 como global para poder ser usada em C
	.global ptr3					# declara a ptr3 como global para poder ser usada em C

.section .text					# section identifier (text)

	.global str_cat	#void str_vat(void) 			 declara a função como global para poder ser usada em C

str_cat:						# início da função

	# prologue 
	pushl %ebp 					# save previous stack frame pointer
	movl %esp, %ebp 			# the stack frame pointer for sum function

	#body
	movl ptr1, %eax				# copia o endereço de ptr1 para %eax
	movl ptr2, %edi				# copia o endereço de ptr2 para %edi
	movl ptr3, %ecx				# copia o endereço de ptr3 para %ecx

loop:
	movb (%eax), %bl			# copia o valor de ptr1 (apontado por %esi) para %bl
	cmpb $0, %bl				# verifica se é o fim da string
	jz segunda_frase			# avança se for o último char
	
	movb %bl, (%ecx)			# copia o char em %bl para ptr3 (apontado pelo endereço em %ecx) 
	incl %eax					# passa para o próximo char de ptr1 
	incl %ecx           		# passa para o próximo char de ptr3
	jmp loop				# continua o loop
	
segunda_frase:
	movb (%edi), %bl			# copia o valor de ptr2 (apontado por %edi) para %bl
	cmpb $0, %bl				# verifica se é o fim da string
	jz str_loop_end				# avança se for o último char
	
	movb %bl, (%ecx)			# copia o char em %bl para ptr3 (apontado pelo endereço em %ecx) 
	incl %edi           		# passa para o próximo char de ptr2 
	incl %ecx           		# passa para o próximo char de ptr3 
	jmp segunda_frase 		# continua o loop

str_loop_end:
	# epilogue
	movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
	popl %ebp 					# restore the previous stack frame pointer
	ret 