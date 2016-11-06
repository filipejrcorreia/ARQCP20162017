.section .data
	
	.global ptrvec1 # ptrvec1 global 
	.global ptrvec2 # ptrvec2 global 
	.global ptrvec3 # ptrvec3 global 
	.global num   #tamanho vetor
	temp:
		.short 0

.section .text
	.global vec_diff # int vec_diff(void)
	.global exists#int exists(void)
	

vec_diff :
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl ptrvec1 ,% esi 	# copiar int address para % esi
	movl ptrvec3, % edi
	movl $0, %ecx
	movl $0, %ebx      		
	movl $0, %eax
	movl $0, %eax

ciclo :
	cmpl num, %ebx  
	jge loop_end
	movl $0, %edx
	movw (%esi, %ebx, 2), %dx	
	movw %dx, temp
	
	push %edx
	call exists
	popl %edx
	
	cmpl $0,%eax
	je nao_existe
	incl %ebx 
	jmp ciclo

nao_existe:
	movl $0, %edx
	movw (%esi, %ebx, 2),%dx   
	movl %edx, (%edi)
	addl $4, %edi
	incl %ecx
	incl %ebx
	jmp ciclo

loop_end : 
	movl %ecx, %eax
# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret # return from the function
	
exists:
	# prologue
		pushl %ebp 				# save previous stack frame pointer
		movl %esp, %ebp 		# the stack frame pointer for sum function
	
	#body
		pushl %esi
		pushl %edi
		pushl %ebx
		movl $0, %eax
		movl ptrvec2 ,%esi
		movl num, %edi
		movl $0, %ebx
	star_loop:
		cmpl %edi, %ebx
		jge star_loop_end
		movw temp, %dx
		cmpw %dx, (%esi)
		je number_exist
		incl %ebx
		addl $2, %esi
		jmp star_loop
		
	number_exist:
		movl $1, %eax	
	star_loop_end:
		popl %ebx
		popl %edi				
		popl %esi				

	# epilogue
		movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
		popl %ebp 				# restore the previous stack frame pointer
		ret	

	
