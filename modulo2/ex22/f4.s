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
	addl %ecx, %eax
	movl $10, %ecx
	movl $0, %edx

        cmpl  %eax, %ecx #compara 100 com a soma de i com j
        jl operation1  #se j + i for maior que 10, dá-se este jump
        jmp operation2  #caso contrário dá-se este jump

operation1:

	movl i, %eax
	movl $2, %ecx
	mull %ecx
	movl %eax, h
	jmp end

operation2:

	movl j, %eax
	movl $3, %ecx
	divl %ecx
	movl %eax, h

        
end:
        movl %ebp, %esp
        popl %ebp
        ret             #retorna eax que tem o valor de h

