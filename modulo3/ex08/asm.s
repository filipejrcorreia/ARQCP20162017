.section .data
	.global ptrvec # ptrvec global 
	.global num   #tamanho vetor
even:
	.int 0   #inciar even

.section .text
	.global vec_sum_even # int vec_sum_even(void)
	.global test_even # void test_even(void)
	

vec_sum_even :
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl ptrvec ,% esi # copiar int address para % esi
	movl num, %ecx	   #mete o tamanho do vetor em ecx
	movl $0, %eax	   #incia eax
	
	
	

correr_vetor :
	movl (% esi), % edx  #move valor para edx
	movl % edx, even     #mover o  valor apontado para even
	push %ecx            #gravar ecx antes do call
	push %edx            #gravar edx antes do call
	push %eax            #gravar eax antes do call
	call test_even	     #chamar a funcao, retorna 1 ou 0 para even	
	popl %eax	     #restaurar %eax
	popl %edx	     #restaurar %edx
	popl %ecx             #restaurar ecx
	cmp $1,even	      #ve que valor retornou
	je par		     #se retornar 1, salta para par

continuar:
	addl $4, % esi   #incrementa esi para o proximo int
	decl % ecx  	 #decresce ecx	
	cmpl $0, %ecx    #ve se o vetor chegou ao fim
	je loop_end
	jmp correr_vetor
	
	
test_even:
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl $0, % edx    #poem edx a 0 por causa da divisao
	movl even,%eax	  #move even para ax
	movl $2,%ecx	  #move 2 para cd
	divl %ecx          #divide ax por 2
	cmpl $0, %edx       #compara o resto com 0, para ver se é par ou nao
	je igual
	movl $0, even


	jmp loop_end 

igual:
	movl $1, even       #even fica a 1
	jmp loop_end
	
	
par:
	addl (% esi), %eax      #sendo par, soma-se o valor
	jmp continuar
	

loop_end : 

# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
	
	
