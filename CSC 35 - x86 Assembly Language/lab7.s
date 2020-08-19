#Victor Peraza
#CSC 35
#Lab 7 Word Bender

.data

Intro: 
	.ascii "Welcome to the Word Bender program\n\0"
IntroTwo:
	.ascii "\n\0"
IntroThree:
	.ascii "Enter a word to bend!\n\0"

Next:
	.ascii "\n\0"
Blank:
	.ascii " \0"
Word: 
	.space 30

.text
.global _start

_start:

	mov $Intro, %rdx
	call PrintCString

	mov $IntroTwo, %rdx
	call PrintCString

	mov $IntroThree, %rdx
	call PrintCString
	
	mov $Word, %rdx
	mov $30, %rcx
	call ScanCString
 	call LengthCString
	mov %rdx, %rbx

	mov $4, %rax			 #Bends The String
	cqo
    	idiv %rbx
    	mov  %rdx, %r10
	
	mov $Next, %rdx
	call PrintCString
	mov $0, %rdi
	movb Word(%rdi), %dl
	call PrintChar
	jmp vert
		
vert:
	mov $Next, %rdx
	call PrintCString
	add $1, %rdi
	movb Word(%rdi), %dl
	call PrintChar
	cmp %r10, %rdi
	jl vert
	mov $Next, %rdx
	
Hori:
	mov $Blank, %rdx
	call PrintCString
	add $1, %rdi
	movb Word(%rdi), %dl
	call PrintChar
	mov $Word, %rdx
	call LengthCString
	cmp %rdx, %rdi
	jl Hori
	mov $Next, %rdx
	call PrintCString
	jmp End

End:
	call EndProgram

