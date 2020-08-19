#Victor Peraza
#Lab 6
#CSC 35

.data

Intro:
	.ascii "Welcome to Gnarly Vic's Record Store!\nYou will be recommended one of the four best bands in rock n roll history.\n\0"
IntroTwo:
	.ascii "An employee will direct you to the band to which they believe fits your taste.\n\0"
IntroThree:
	.ascii "\n\0"

qOne:
	.ascii "Do you like to (1)Head Bang/Air Guitar or (2) sit back and chill? \n\0"
qTwo:
	.ascii "Do you (1) rock a mullet and ride a firebird (2) wear tie die shirts and ride a Volkswagen Bus? \n\0"
qThree:
	.ascii "Is it more important to (1) bring peace or (2) break rules?\n\0"


LedZeppelin:
	.ascii "You got Led Zeppelin!\n\0"
BlackSabbath:
	.ascii "You got Black Sabbath!\n\0"
PinkFloyd:
	.ascii "You got Pink Floyd!\n\0"
RollingStones: 
	.ascii "You got The Rolling Stones!\n\0"

Disco:
	.ascii "You must like Disco, LOSER!\n\0"

.text
.global _start
_start:



	mov $Intro, %rdx
	call PrintCString
	
	mov $IntroTwo, %rdx
	call PrintCString
	
	mov $IntroThree, %rdx
	call PrintCString
One:
	mov $qOne, %rdx
	call PrintCString
	call ScanInt
	cmp $1, %rdx
	je Two
	cmp $2, %rdx
	jg Error
Three:
        mov $qThree, %rdx
        call PrintCString
        call ScanInt
        cmp $1, %rdx
        je PF
	cmp $2, %rdx
	jg Error

RS:
        mov $RollingStones, %rdx
        call PrintCString
        jmp End
 
BS:  
	mov $BlackSabbath, %rdx 
	call PrintCString
        jmp End

Two:
        mov $qTwo, %rdx
        call PrintCString
        call ScanInt
        cmp $1, %rdx
        je BS
	cmp $2, %rdx
	jg Error

LZ:
	mov $LedZeppelin, %rdx
	call PrintCString
	jmp End	

PF:	
	mov $PinkFloyd, %rdx
	call PrintCString
	jmp End

Error:
        mov $Disco, %rdx
        call PrintCString
        jmp End

	
End:			
	call EndProgram	

