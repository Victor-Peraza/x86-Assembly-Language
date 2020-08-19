
#lab 3
#Victor Peraza
.data
Cupcake:
	.ascii "Cupcake      	   : 6 grams\n\0"
Scoops:
	.ascii "Scoop of Ice cream : 12 grams\n\0"
Bars:
	.ascii "Chococlate bar	   : 10 grams\n\0"
numOfCakes:
	.ascii "How many  cupcakes did you eat?\n\0" 
numOfScoops:
	.ascii "How many scoops of ice cream?\n\0"
numOfBars:
	.ascii "How many chocolatebars?\n\0"
Total: 
	.ascii "That's \0 "
totalTwo:
	.ascii " grams of sugar!\n\0"
Sugar: 
	.ascii "How much sugar can the Weenie have?\n\0"
howMuch:
	.ascii "The Weenie can only eat this\n\0"
howMuchTwo:
	.ascii " times.\n\0"
Weenie:
	.ascii "The Weenie can only eat this \0 "
weenieTwo:
	.ascii " times.\n\0"


.text
.global _start
_start:

	mov $Cupcake, %rdx
	call PrintCString
	
	mov $Scoops, %rdx
	call PrintCString
	
	mov $Bars, %rdx
	call PrintCString

	mov $numOfCakes, %rdx
	call PrintCString
	call ScanInt
	mov $6, %rsi #rax
	imul %rsi, %rdx 	
	mov %rdx, %r8	

	mov $numOfScoops, %rdx
	call PrintCString
	call ScanInt
	mov $12, %rcx
	imul %rcx, %rdx	
	add %r8, %rdx
	mov %rdx, %r9	

	mov $numOfBars, %rdx
	call PrintCString
	call ScanInt
	mov $10, %rbx
	imul %rbx, %rdx
	add %r9,%rdx
	mov %rdx, %r10

	mov $Total, %rdx
	call PrintCString
	mov %rdx, %r11
	mov %r10, %rdx
	call PrintInt
	mov %rdx, %r12
	

	mov $totalTwo, %rdx
	call PrintCString
	mov %r12, %rdx
	mov %rdx, %r13	

	mov $Sugar, %rdx
	call PrintCString
	call ScanInt
	mov %rdx, %r14

	mov $Weenie, %rdx
	call PrintCString
	mov %r14, %rax
	mov %r13, %r15 
	cqo
	idiv %r15
	mov %rax, %rdx
	call PrintInt

	mov $weenieTwo, %rdx
	call PrintCString
	
	call EndProgram

