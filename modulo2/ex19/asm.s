.section .data
	.global temp1
	.global temp2

.section .text
	.global contas 
contas: #int ac(void)
	movl $0, %eax
	movw temp1, %bx   
	movw temp2, %cx   
	cmpw %bx, %cx  
	jg aumenta 
	jl diminui
	ret          
	
aumenta:
	addl $3, %eax 
	subw $1, %cx  
	cmpw %bx, %cx 
	jg sobe     
	ret         

diminui:
	addl $2, %eax 
	addw $1, %cx  
	cmpw %bx, %cx 
	jl desce      
	ret
	
