.section .data

.section .text

	.global sum_n

sum_n:

	pushl %ebp
	movl %esp, %ebp

	movl 8(%ebp), %edx # Move o valor de n que está na stack para edx
	movl $0, %ecx
	movl $0, %eax	

	loop:
	
	addl %ecx, %eax #adiciona ecx a eax
	
	cmpl %edx, %ecx #compara ecx com edx
	je end	#caso ecx seja igual a edx o loop acaba
	
	incl %ecx #incrementa 1 a ecx
	
	jmp loop #Jump necessário para que exista um loop
	
	end:
	movl %ebp, %esp
	popl %ebp
	ret

