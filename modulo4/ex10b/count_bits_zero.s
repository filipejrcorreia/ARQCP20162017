.section .data

.section .text

	.global count_bits_zero


count_bits_zero:


	pushl %ebp
	movl %esp, %ebp

	movl 8(%ebp), %eax #Move o primeiro parametro da função da stack para o registo eax
	movl $32, %ecx #Passa o valor 32 para ecx
	movl $0, %edx #Passa o valor 0 para edx, é o contador de 0's

	count:

	shr %eax #Shift à direita do numero, o bit menos significativo passa para a flag carry

	jc skip #Se a flag carry for 1 edx não é incrementado
	
	incl %edx #Incrementa edx
	
	skip:

	loop count
	
	movl %edx, %eax
	movl %ebp, %esp
	popl %ebp
	ret

