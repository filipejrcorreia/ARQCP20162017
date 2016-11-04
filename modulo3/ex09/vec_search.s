.section .data

	.global num
	
	.global ptrvec

	.global x

.section .text

	.global vec_search

vec_search:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl ptrvec, %edx #ptrvec, apontador para o vetor passa para o registo edx

	loop:
	
	movw (%edx),%cx #O valor apontado pelo atual endereço em edx passa para cx (como é um short, apenas necessita 2 bytes)
	
	cmpw x, %cx #Compara x, o valor cujo o endereço queremos saber com cx, o atual valor de (%edx)
	je found	

	cmpl num, %ebx	#compara num com ebx, ebx é o contador, num é o numero de elementos neste vetor
	je end	

	addl $2, %edx	#Soma 2 a edx, logo o apontador avança para o próximo número
	addl $1, %ebx	#Soma 1 ao contador
	
	jmp loop


	end:
	
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

	found: 

	movl %edx, %eax	#Passa o valor do endereço encontrado para eax para que este possa ser fazer return
	
	jmp end
