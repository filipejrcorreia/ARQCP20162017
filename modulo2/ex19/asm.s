.section .data
	.global temp1
	.global temp2


.section .text
	.global operacao # int operacao(void)
operacao: 
	movw temp1, %dx   
	movw temp2, %cx   
	movl $0, %eax 
	cmpw %dx, %cx  
	jg aumenta     
	jl diminui
	ret          
	
aumenta:
	addl $3, %eax 
	subw $1, %cx  
	cmpw %dx, %cx 
	jg aumenta     
	ret         

diminui:
	addl $2, %eax 
	addw $1, %cx  
	cmpw %dx, %cx 
	jl diminui      
	ret