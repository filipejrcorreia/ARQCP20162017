.section .data

i:
	.int 0
j:
	.int 0
h:
	.int 0

.section .text

	.global start

start:

	pushl %ebp
	movl %esp, %ebp

	movl i, %eax
	movl j, %ecx
	
	cmpl  %eax, %ecx	#compara j com i
	je subtract		#se j e i forem iguais passamos logo à subtração
	jmp addition		#caso contrário somamos

subtract:

	subl %ecx, %eax;
	movl %eax, h;	
	jmp end

adition:
	
	addl %ecx, %eax;	#soma eax com ecx e armazena em eax
	movl %eax, h;	

end:
	movl %ebp, %esp
	popl %ebp
	ret		#retorna eax que tem o mesmo valor que h
