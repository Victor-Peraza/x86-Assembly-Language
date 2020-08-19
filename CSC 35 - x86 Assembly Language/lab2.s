#lab 2
#Victor Peraza

.data

MonthlyCar:
	.ascii "Monthly car payment?\n\0"

MonthlyCredit:
	.ascii "Monthly credit card payment?\n\0"

HouseCost:
	.ascii "Monthly house/apartment cost?\n\0"

IncomePrompt:
	.ascii "how much do you make each month?\n\0"

Total:
	.ascii "Your total outgo is $\n\0"

NetIncome:
	.ascii "Well, your actual net income is $\n\0"

.text
.global _start
_start:

	mov $MonthlyCar, %rdx
	call PrintCString
	call ScanInt
	mov %rdx, %rax
 

	mov $MonthlyCredit, %rdx
	call PrintCString 
	call ScanInt
        add %rax, %rdx
	mov %rdx, %r8
	

	mov $HouseCost, %rdx
	call PrintCString
	call ScanInt
	add  %r8, %rdx
	mov %rdx, %r9	
	
	mov $IncomePrompt, %rdx
	call PrintCString
	call ScanInt	
	mov %rdx, %r10

	mov $Total, %rdx
	call PrintCString	
	mov %r9, %rdx
	call PrintInt
	
	mov $NetIncome, %rdx 
	call PrintCString
	mov %r10, %rdx
	sub  %r9, %rdx
	call PrintInt
	

	call EndProgram






