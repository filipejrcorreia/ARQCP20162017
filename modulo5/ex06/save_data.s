.section .data



.section .text
	.global save_data

save_data:

	#prologo 
	pushl %ebp
	movl %esp, %ebp


	movl 8(%ebp) , %edi		# mover o pointer para o registo %edi

	movl 12(%ebp) , %esi	# vi para o registo %esi
	movl 16(%ebp) , %ecx	# vc para o registo %ecx 
	movl 20(%ebp) , %edx 	# vj para o registo %edx
	movl 24(%ebp) , %ebx	# vd para o registo %ebx	


	movl %esi , (%edi) 		#  vi
	addl $4 , %edi 			# passar para o lugar de vc
	movl %ecx , (%edi)		# vc
	addl $4 , %edi			# passar para o lugar de vj
	movl %edx , (%edi)		# vj
	addl $4 , %edi 			# passar para o lugar de vd
	movl %ebx , (%edi)		#  vd 


	fim:

	#epilogo
	movl %ebp , %esp
	popl %ebp
