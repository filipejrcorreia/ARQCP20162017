.section .data

	.global find_greater

find_greater:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	pushl %esi
	pushl %edi

	movl 8(%ebp), %eax #Move o endereço de student para eax
	movl 12(%ebp), %ebx #Move o numero "minimum" para ebx
	movl 16(%ebp), %edx #Move o vetor a ser preenchido para edx
	movl $10, %ecx #Move 10, o numero de notas em grades de Student para ecx, para o loop
	movl $0, %esi #Move 0 para esi

	count:

	cmpl %ebx, 8(%eax) #Compara o valor minimo com a nota atual no vetor de notas de student
	jg add_to_array #Se for maior, é adicionado a greater_grades

	addl $4, %eax #Move o apontador para o próximo indice do vetor de notas

	loop count #decrementa ecx até este chegar a 0
	
	jmp end

	add_to_array:
	movl 8(%eax), %edi #Move o valor apontado atualmente do vetor de notas de student para edi
	movl %edi, (%edx) #Move o valor em edi para greater_grades
	addl $4, %eax #Avança para o proximo indice do vetor de notas
	addl $4, %edx #Avança para o proximo indice do vetor greater_grades
	incl %esi #Incrementa esi
	
	jmp count

	end:
	movl %esi, %eax #Move o valor de esi para eax para ser retornado
	popl %edi
	popl %esi
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

