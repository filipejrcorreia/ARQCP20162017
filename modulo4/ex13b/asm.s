
.section .text
	.global activate_bits # int activate_bits(int num, int left, int right )



activate_bits:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for  function

	
	movl 8(%ebp),%eax  		#primeiro parametro  num
	movl 12(%ebp),%ebx		#segundo parametro   left
	movl 16(%ebp),%edx		#terceiro parametro  right
	movl $0,%esi 			#vai funcionar como contador de 0 a 31
	movl $1,%edi			#mascara

ciclo:
	
	cmpl %edx, %esi			#se o contador for menor que o limite a direita (se tivermos a direita do rigth)
	je continuar
	orl %edi, %eax			#aplica a mascara invertendo o bit
	imull $2,%edi			#multiplica a mascara por 10 para o "1" avançar uma posicao na mascara
	incl %esi			#incrementa o contador
	jmp ciclo

continuar:
	cmpl %ebx,%esi			#enquanto tivermos entre o limite esquero e direito so incrementamos esi e multiplicamos a mascara
	jg ciclo2			#quando o contador for maior que o limite a esquerda salta para o segundo ciclo
	imull $2,%edi
	incl %esi	
	jmp continuar

ciclo2:
	cmpl $31,%esi			#limite para correr os bits todos
	je fim	
	orl %edi, %eax			#aplica a mascara
	imull $2,%edi			#avança o "1" na mascara
	incl %esi			#incrementa o contador
	jmp ciclo2
	
fim:	

	# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame
	ret
