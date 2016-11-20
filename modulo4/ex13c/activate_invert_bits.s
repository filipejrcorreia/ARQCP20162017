.section .data

.section .text

	.global activate_invert_bits

activate_invert_bits:

	pushl %ebp
	movl %esp, %ebp

	
	movl 8(%ebp),%ecx  		#primeiro parametro  num
	movl 12(%ebp),%ebx		#segundo parametro   left
	movl 16(%ebp),%edx		#terceiro parametro  right

	pushl %edx			#envia 1 parametro
	pushl %ebx			#envia 2 parametro
	pushl %ecx			#envia 3 parametro

	call  activate_bits #Call da função count_bits_zero

	popl %ecx			#restaura
	popl %ebx			#restaura
	popl %edx			#restaura
	

	notl %eax			#Inverte o retorno da funcao

	movl %ebp, %esp
	popl %ebp
	ret

