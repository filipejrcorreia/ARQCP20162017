.section .data

	.global ptrgrades
	
	.global num
	
	.global ptrfreq

.section .text

	.global frequencies

frequencies:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	pushl %esi	

	movl ptrgrades, %eax #Fica guardado o endereço de ptgrades em eax
	movl ptrfreq, %ecx #Fica guardado o endereço de ptrfreq em ecx
	movl $0, %edx
	movl num, %esi
	subl $1, %esi

	loop:
	
	movl (%eax), %ebx #o valor apontado pelo endereço em eax fica guardado no registo ebx

	imull $4, %ebx #ebx é multiplicado por 4 para poder ser somado ao registo ecx que contém o endereço de um vetor de inteiros
	
	addl %ebx,%ecx #ecx passa a apontar para o indice ebx/4 
	
	addl $1, (%ecx) #É somado 1 ao valor que se encontra no endereço atual de ecx

	subl %ebx, %ecx #Ecx passa a apontar para o endereço original de ptrfreq

	cmpl %esi, %edx #Caso edx, o contador seja igual a esi, num-1, este loop termina
	je end
	
	inc %edx #incrementa o contador
	add $4, %eax #eax aponta para o próximo valor do vetor

	jmp loop

	end:
	popl %esi
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
