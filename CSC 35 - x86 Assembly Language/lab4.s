#Victor Peraza
#Lab 4
#CSC 35

.data

ASingleSpace:
	.ascii " \0" 
SpaceTwo:
	.ascii " \0"

SpaceThree:
	.ascii " \0"

nounSpace:
	.space 30
	
verbSpace:
	.space 40
	
prepSpace:
	.space 50
		
nounTwoSpace:
	.space 60
	
Welcome:
	.ascii "Welcome to Silly Sentences!\n\0"
noun:
	.ascii "Player A, enter a noun: \0 "
verb:
	.ascii "Player, B enter a verb: \0 "

preposition:
	.ascii "Player A, enter a preposition: \0 "

nounTwo:
	.ascii "Player B, enter a noun: \0 "

final:
	.ascii "Your sentence is: \0 "


.text
.global _start
_start:

	mov $Welcome, %rdx
	call PrintCString
	#call ScanCString
	#mov %rdx, %rcx

	mov $noun, %rdx
	call PrintCString
	mov $nounSpace, %rdx
# Setup RCX
	mov $30, %rcx
	call ScanCString
	call ClearScreen	

	mov $verb, %rdx
	call PrintCString
	mov $verbSpace, %rdx
	mov $40, %rcx
	call ScanCString
	call ClearScreen
	
	mov $preposition, %rdx
	call PrintCString
	mov $prepSpace, %rdx
	mov $50, %rcx
	call ScanCString
	call ClearScreen	

	mov $nounTwo, %rdx
	call PrintCString
	mov $nounTwoSpace, %rdx
	mov $60, %rcx
	call ScanCString

	mov $final, %rdx
	mov $nounSpace, %rdx
	call PrintCString
	mov $ASingleSpace,%rdx
	call PrintCString
	mov $verbSpace, %rdx
	call PrintCString
	mov $SpaceTwo, %rdx
	call PrintCString
	mov $prepSpace, %rdx
	call PrintCString
	mov $SpaceThree, %rdx
	call PrintCString
	mov $nounTwoSpace, %rdx
	call PrintCString
	
	call EndProgram
	
	
