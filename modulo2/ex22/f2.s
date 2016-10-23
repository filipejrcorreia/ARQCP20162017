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

        cmpl  %eax, %ecx #compara j com i
        jge operation1	#se j for maior ou igual a i, dá-se este jump
        jmp operation2	#caso contrário dá-se este jump

operation1: 
	
	addl $1, %eax	#soma 1 a i, o valor fica guardado em eax
	movl %eax, i	
	jmp end

operation2:

	addl $1, %ecx	#soma 1 a j, o valor fica guardado em ecx
	movl %ecx, j
	movl $0, %edx	#inicia edx, para que seja possivel a multiplicação caso haja overflow
	mull %ecx	#multiplica eax por ecx
	movl %eax, h	

end:
        movl %ebp, %esp
        popl %ebp
        ret		#retorna eax que tem o valor de h
