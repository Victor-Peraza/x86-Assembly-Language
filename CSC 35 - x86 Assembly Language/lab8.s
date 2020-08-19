
#Victor Peraza
#Lab 8 
#CSC 35

.data

Read:
	.ascii "What is your name?\n"

Before:
	.ascii "Hello, \0"

Name:

	.space 30

After:
	.ascii "! The best way to learn recursion is to first learn recursion!\n"

.text
.global _start

_start:
	mov $1, %rax
	mov $1, %rdi
	mov $Read, %rsi
	mov $19, %rdx
	syscall	
	
	mov $0, %rax
	mov $0, %rdi
	mov $Name, %rsi
	mov $30, %rdx	
	syscall	
	mov %rax, %r10
	
	mov $1, %rax
	mov $1, %rdi
	mov $Before, %rsi
	mov $7, %rdx
	syscall	

	mov $1, %rax
	mov $1, %rdi
	mov $Name, %rsi
	mov %r10, %rdx
	sub $1, %rdx
	syscall
	
	mov $1, %rax
	mov $1, %rdi
	mov $After, %rsi
	mov $64, %rdx
	syscall 

	mov $60, %rax
	mov $0, %rdi
	syscall

