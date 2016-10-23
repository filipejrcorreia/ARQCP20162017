.section .data

i:
	.int 0
j:
	.int 0
g:
	.int 0
h:
	.int 0
r:
	.int 0

.section .text

        .global start

start:

        pushl %ebp
        movl %esp, %ebp

        movl i, %eax
        movl j, %ecx

        cmpl  %ecx, %eax #compara i com j
        jge operation1  #se i for maior ou igual a j, dá-se este jump
        jmp operation2  #caso contrário dá-se este jump

operation1:
	
	addl %eax, %ecx
	movl %ecx, h
	movl %ecx, G

	jmp end #efetua o salto para "end"

operation2:
	
	addl %eax, %ecx #soma i com j
	movl %ecx, h
	addl $2, %ecx #soma i com j com 2, i+j estava guardado em ecx
	movl %ecx, g

end:
	
	movl h, %eax
	movl g, %ecx
	movl $0, %edx
	divl %ecx	#divisão de eax por ecx, ou h por g
	movl %eax, r
	
        movl %ebp, %esp
        popl %ebp
        ret             #retorna eax que tem o valor de r

