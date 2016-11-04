.section .data

num:
	.int 0
	

	.global num
	
	.global ptrvec

.section .text

	.global vec_inc

	vec_inc:
	
	pushl %ebp
	movl %esp, %ebp

	movl ptrvec, %eax #apontador do vetor é copiado para o registo eax
	movl $0, %ecx

	loop:

	addl $1, (%eax) #adiciona 1 ao valor apontado por eax
	addl $1, %ecx
	addl $4, %eax #avança para o próximo numero do vetor

	cmpl num, %ecx
	je end

	jmp loop 

	end:

	movl %ebp, %esp
	popl %ebp
	ret
