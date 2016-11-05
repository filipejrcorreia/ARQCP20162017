.section .data
	
	.global ptrvec
	
	.global num

.section .text

	.global array_sort

array_sort:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	pushl %esi
	
	movl ptrvec, %esi #Apontador do vetor passa para o registo esi
	movl num, %ecx #Numero de elementos de vec passa para ecx
	movl $0, %eax #eax é o contador

	Loop:

	cmpl %ecx, %eax	#Se o contador for igual ao numero de elementos, o programa acaba
	jge end

	cmpl $0, %eax	#Se o contador for igual a 0, este vai ser incrementado
	je Increase

	movl (%esi), %ebx #O valor atual de esi é passado para ebx
	movl -4(%esi), %edx #O valor anterior de esi é passado para edx
	cmpl %ebx, %edx #Se edx for menor ou igual a ebx, o contador é aumentado
	jle Increase	

	movl %edx, (%esi) #Como edx é maior que ebx, edx passa para a posição atual do vetor
	movl %ebx, -4(%esi) #E ebx, mais pequeno, passa para a posição anterior do vetor

	subl $4, %esi #O apontador volta ao index anterior
	dec %eax #O contador é decrementado

	BackToLoop:
	jmp Loop

	Increase:
	inc %eax #O contador é incrementado
	add $4, %esi #O apontador passa para o próximo index
	jmp BackToLoop	
	
	end:

	popl %esi
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
