.section .data

	.global ptrvec
	
	.global num

.section .text

	.global vec_fill

vec_fill:

	pushl %ebp
	movl %esp, %ebp

	movl ptrvec, %ecx #Apontador do vetor fica no registo ecx
	movl $0, %edx

	loop:

	movl (%ecx), %eax #O número apontado pelo apontador fica em eax

	cmpl $0, %eax	#Compara eax ( número do vetor) com 0, se este for menor só pode ser negativo
	jl index	#Jump par index, onde o número negativo é substituido pelo seu index

	midloop:	
	
	cmpl num, %edx	#Compara edx com num, o loop acaba quando edx, o contador atinge num
	je end	

	addl $4, %ecx	#Adiciona 4 a ecx, logo passa ao próximo int do vetor
	addl $1, %edx	#Aumenta 1 ao contador

	jmp loop

	index:
	
	movl %edx, (%ecx) #Substituí o número atual apontado por ecx por o seu numero de index 
	jmp midloop
	
	end:
	movl %ebp, %esp
	popl %ebp
	ret
