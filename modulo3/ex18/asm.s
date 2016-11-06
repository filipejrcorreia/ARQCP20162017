.section .data
	.global ptrvec # ptrvec global 
	.global num   #tamanho vetor


.section .text
	.global count_seq  # int count_seq(void)
	.global verificar# int verificar(void)
	

count_seq:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl ptrvec ,% esi # copiar int address para % esi
	movl num, %ecx	   #mete o tamanho do vetor em ecx
	movl $0, %edx	   #incia edx

loop:
	push %edx
	push %ebx
	call verificar   #funcao devolve 1 se a condicao se verificar, 0 se nao
	popl %ebx
	popl %edx
	
	cmpl $1,%eax    # se a condicao se verificar, incrementa
	je incrementar
	
	
continuar:
	addl $4, % esi   #incrementa esi para o proximo int
	decl % ecx  	 #decresce ecx	
	cmpl $2, %ecx    #ve se o vetor chegou ao fim (2 para nao ir para la dos limites)
	je fim
	jmp loop
	
incrementar:
	incl %edx        #incrementa edx
	jmp continuar
	
verificar:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl (%esi),%edx      #passa o na posicao mas baixa para edx, para se poder comparar
	cmpl 4(%esi),%edx     #compara com a proxima posicao
	jge zero              #se a proxima posicao nao for maior, retorna 0
	movl 4(%esi),%edx     #avanca uma posicao
	cmpl 8(%esi),%edx      #compara com a proxima posicao
	jge zero	      #se a proxima posicao nao for maior, retorna 0
	movl $1, %eax         #retorna 1
	jmp loop_end

zero:
	movl $0, %eax       #retorna 0
	jmp loop_end
	
fim:
	movl %edx, %eax
loop_end : 


# epiloge
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	
	
