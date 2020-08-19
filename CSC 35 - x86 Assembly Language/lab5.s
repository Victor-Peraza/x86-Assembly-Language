
#Victor Peraza
#CSC 35
#Lab 5

.data

Name: 
	.ascii "Fluff-a-matic Vending machine\n\0"

CatNip:
	.ascii "1. Cat Nip (85 cents)\n\0"

String:
	.ascii "2. String (25 cents)\n\0"

BouncyBall:
	.ascii "3. Bouncy Ball (60 cents)\n\0"

CatSnacks:
	.ascii "4. Cat Snacks (42 cents)\n\0"

items:
	.quad CatNip
	.quad String
	.quad BouncyBall
	.quad CatSnacks

Costs:
	.quad 85
	.quad 25
	.quad 60
	.quad 42

Cents:
	.ascii "How many cents were entered: \0"

CentsTwo:
	.quad 0

Selection:
	.ascii "Your selection: \0"

Choice: 
	.quad 0
Next:
	.ascii " \n\0"
Change:
	.ascii "Your change is \0"
changeTwo:
	.ascii "cents\n\0"

Dispense:
	.ascii "Dispensing \0"

dispenseTwo:
	.ascii " quarter(s) and \0"

dispenseThree:
	.ascii " penny(s)\n\0"

.text
.global _start
_start:

	mov $Name, %rdx
	call PrintCString

	mov $0, %rdx
	mov items(,%rbx, 8),%rdx
	call PrintCString 

	mov $1, %rbx
	mov items(,%rbx, 8), %rdx
	call PrintCString
	
	mov $2, %rbx
	mov items(,%rbx, 8), %rdx
	call PrintCString 

	mov $3, %rbx
	mov items(,%rbx, 8), %rdx
	call PrintCString

	mov $Cents, %rdx
	call PrintCString
	call ScanInt
	mov %rdx, CentsTwo
	#call PrintInt

	mov $Selection, %rdx
	call PrintCString
	call ScanInt
	mov %rdx, Choice
	
	mov $Next, %rdx
	call PrintCString
	
	mov Choice, %rbx
	sub $1, %rbx
	mov items(,%rbx, 8), %rdx
	call PrintCString
	
	mov $Change,%rdx
	call PrintCString

	
	mov Costs(,%rbx, 8), %r10
	mov CentsTwo, %rdx
	sub %r10, %rdx
	call PrintInt
	mov %rdx, %r11		#Change
	 

	mov $Next, %rdx
	Call PrintCString	
	
	mov $Dispense, %rdx
	call PrintCString

	mov %r11, %rax
	mov $25, %r13
	cqo
	idiv %r13
	mov %rax, %rdx
	call PrintInt
	mov %rdx, %r14	
	
	mov $dispenseTwo, %rdx
	call PrintCString

	mov %r14, %r15 #3
	mov %r13, %rdx #25
	imul %r15, %rdx
	
	mov %rdx, %r12
	mov %r11, %rdx
	sub %r12, %rdx
	call PrintInt
	
	mov $dispenseThree, %rdx
	call PrintCString
	
	mov $Next, %rdx
	Call PrintCString
		
	call EndProgram  
