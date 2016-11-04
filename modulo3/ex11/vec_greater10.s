.section .data

	.global ptrvec
	
	.global num

.section .text

	.global vec_greater10

vec_greater10:
	
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl $0, %edx
	movl $0, %eax
	movl $0, %ebx
	movl ptrvec, %ecx #Endereço do vetor passa par o registo ecx
	
	loop:

	movl (%ecx), %ebx #Passa o valor apontado por ecx atualmente para ebx

	cmpl $10, %ebx #Compara o valor apontado pelo atual endereço de ecx com 10, que foi passado para ebx
	jge adds	#Caso o valor apontado por ecx seja maior ou igual a 10 dá-se um jump para adds
	
	midloop:
	
	cmpl num, %edx	#Compara edx, o contador, com num, que é o numero de elementos do vetor
	je end	

	addl $4, %ecx 	#Adiciona 4 a ecx, para que este passe a apontar o valor do próximo long int
	addl $1, %edx	#Soma 1 a edx que é o contador

	jmp loop	

	adds:		#Cada vez que um numero do vetor é maior que 10 dá-se um incremento em eax, que será depois retornado
	
	addl $1, %eax
	jmp midloop
	

	end:
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
