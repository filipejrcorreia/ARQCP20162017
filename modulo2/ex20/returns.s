.section .data

num:
	.int 0

	.global num

.section .text

.global returns
returns:

	pushl %ebp
	movl %esp, %ebp

	movl num, %eax
	movl num, %ebx
	movl $2, %ecx
	movl $0, %edx
	divl %ecx

	cmpl $0, %edx
	je even #par
	jmp odd #impar

even:
	cmpl $0, %ebx #num > 0
	jg epositive #positivo
	jmp enegative	#negativo
odd:
	cmpl $0, %ebx #num > 0
	jg opositive #positivo
	jmp onegative #negativo

epositive:
	movl $1, %ebx
	jmp exit

enegative:
	movl $2, %ebx
	jmp exit

opositive:
	movl $3, %ebx
	jmp exit

onegative:
	movl $4, %ebx
	jmp exit

exit:
	movl %ebx, %eax
	movl %ebp, %esp
	popl %ebp
ret
