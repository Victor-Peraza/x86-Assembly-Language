# lab1.s
# Victor Peraza
# 1. Assemble : as -o lab1.o .s
# 2. Link     : 1d -o a.out lab1.o csc35.o
# 3. Execute  : a.out

.data
Greeting:
    .ascii "Hello, world!\n\0"
Name:
    .ascii "My name is Victor Peraza.\n\0"
Quote:
    .ascii "fake it till you make it.\n\0"
Year:
    .ascii "I will graduate in\n\0"
YearTwo:
    .ascii " from Sacramento State!\n\0"
.text
.global _start
_start:
    
    mov $Greeting, %rdx
    call PrintCString

    mov $Name, %rdx
    call PrintCString

    mov $Quote, %rdx
    call PrintCString

    mov $Year, %rdx 
    call PrintCString

    mov $2022, %rdx
    call PrintInt

    mov YearTwo, %rdx
    call PrintCString
    call EndProgram
