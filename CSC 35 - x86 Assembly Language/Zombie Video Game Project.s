#Victor Peraza
#Project
#CSC 35
	#################################### REGISTERS ##################################
	#										#
	#					HP = RBX				#
	#				      AMMO = R8					#
	#				 GUN LEVEL = R9					#
	#			      METAL SCRAPS = R10				#
	#				      WEEK = R11				#
	#			  HORDE WIN CHANCE = r13				#
	#			          CAR FUEL = r14   				#
	#				 AMMO USED = r15				#
	#################################################################################




.data
intro:
    	.ascii "\n^^^^^^^^^^^^^^^^^^^^^^^^PROJECT ZOMBIE, THE GAME(SEMESTER PROJECT)^^^^^^^^^^^^^^^^^^^^^^^^^\n"
        .ascii "\nYou wake up from a coma to only find out that there is a zombie apocalypse.\n"
        .ascii "You go home and your family is missing!\n"
        .ascii "Worried, you grab your gun and get in your car\n"
        .ascii "Your journey to find your son and wife begins.... \n"
        .ascii "\n"
        .ascii "||||||||||||||||||||||||||RULES||||||||||||||||||||||||||\n"
        .ascii "1.DONT PRESS ANYTHING OTHER THAN 1 OR 2 FOR RANDOM EVENTS AND NOTHING BELOW A 1 AND NOTHING ABOVE A 4 FOR YOUR MAIN ACTIONS\n"
        .ascii "||||||||||||||||||||||||||HOW TO PLAY||||||||||||||||||||||\n"
        .ascii "1. YOU WILL BE GIVEN 100 FOR HP,AMMO, AND FUEL. HOWEVER IT'S UP TO YOU IF YOU WANT TO UPGRADE YOUR GUN (LVL STARTS AT 0)\n"
        .ascii "2. BASED ON THE CHOICE YOU MAKE RANDOM EVENTS WILL OCCUR AND IF YOU MAKE THE RIGHT CHOICE YOUR SUPPLIES SHOULD LAST AND YOU SHALL SURVIVE \n"
        .ascii "3. YOU MAKE A DECISION BASED ON WHAT NUMBER THE ACTION/OPTIONS CONTAIN. SO YOU INPUT YOUR CHOICE(NUMBER)\n"
	.ascii "4. TRY AND SURVIVE FOR 20 WEEKS BY PLAYING SMART (IT'S ACTUALLY POSSIBLE TO WIN, ME, THE CREATOR WON, SO YOU CAN TOO)\n"
	.ascii "|||||||||||||||||||||||||||||TIPS||||||||||||||||||||||||||\n"
	.ascii "1.AVOID BANDITS\n"
	.ascii "2.UPGRADE YOUR GUN TO A SLIGHTLY HIGHER CHANCE OF DEFEATING THE HORDES\n"
    	.ascii "3.YOUR FUEL IS VERY LIMITED, USE IT WISELY \n"
        .ascii "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||\n\0"


Choice:
        .ascii "\n1.Upgrade your Gun(20 Metal Scraps)\n"
        .ascii "2.Drive to the nearest town, there might be ammo(15 fuel)\n"
        .ascii "3.Stop by a house and spend the night. Restores 10 HP.(10 Metal Scraps used for Barricade) \n"
        .ascii "4.Give up on your family.\n\0"
	.ascii "\n\0"
	.ascii "\n\0"
upWeapon:
        .ascii "Weapon upgraded!\n\0"


weekOne:
        .ascii  "\n====================== WEEK \0 "
weekTwo:
	.ascii  " ====================== \0"
Health:
        .ascii  "\n          HP: \0"
Ammo:
        .ascii  "\n        AMMO: \0"
Level:
        .ascii  "\nPISTOL LEVEL: \0"
Scraps:
         .ascii "\nMETAL SCRAPS: \0"
Gas:
       .ascii  "\n    CAR FUEL: \0"

House:
        .ascii "\nYou spend the night at the house, you feel a lot better and recovered\n"
        .ascii "You restored 10 HP and used 10 Metal Scraps to barricade house to be safe\0"


lostAmmo:
        .ascii "\nYou use up some of your ammo when killing some zombies along the way\n"
        .ascii "Amount of ammo required/used: \0"


introBandits:
	.ascii " \n"
	.ascii "     --''--     _==_    \n"
      	.ascii "      (``)     ,('')   \n"
	.ascii "____ /~  ~\ ___  (::)_____\n"
	.ascii "    `|_  _|'    (` |     \n"
	.ascii "      _||_      /__|_     \n"
        .ascii "You spot a group of bandits, they don't notice you.\n"
        .ascii "Being a former Sheriff you feel like you know how to handle it\n"
        .ascii "You contemplate whether to confront them or move along. \n"
        .ascii "What will you do?\n"
        .ascii "1.Draw your gun and shoot the bandits!\n"
        .ascii "2.Keep finding your family\n\0"



killBandits:
        .ascii "\nYou shoot the bandits and kill them all!\n"
        .ascii "Amount of ammo used: \0"
	.ascii "\n Amount of Metal Scraps found: \0"

loseBandits:
        .ascii "\n***CLACKITY CLACK!***\n"
        .ascii "Pulling your gun out of your holster, you end up dropping it!\n"
	.ascii "You are beaten up and are told give up your ammunition!\n"
	.ascii "Maybe you still haven't fully recovered from that coma eh? \n"
	.ascii "You lost  \0 "

hpBandits:
	.ascii " ammo and \0"
hpBanditsTwo:
	.ascii " HP\n\0"

Horde:
        .ascii "\n        	 .--.               .--. \n"
        .ascii "      	 	| = o\             | = o\ \n"
        .ascii "      		 \= =_/             \= =_/ \n"
        .ascii "       		 )= \____            )= \____\n"
        .ascii "      		 ; = _|__-\         ; = _|__-\ \n"
        .ascii "       		|= ----.\          |= ----.\ \n"
        .ascii "       	       ('.==|             ('.==| \n"
        .ascii "      		    \=\=\              \=\=\ \n"
        .ascii "   	  	 /=/\=\_           /=/\=\_\n"
  	.ascii "    		/__) \__)         /__) \__) \n"
        .ascii "You hear a large amounts of groaning. IT'S A HORDE OF ZOMBIES!\n"
        .ascii "You must have been spotted or heard and are being surrounded!\n"
        .ascii "There's 50% chance will survive.\n"
        .ascii "What will you do?\n"
  	.ascii "1.Fight the horde!\n"
        .ascii "2.Get out of there! This is super risky too. You will lose stuff and may even die.\n\0"

win:
        .ascii "\nYou end up killing all the zombies and you end up getting metal scraps: \0"
lost:
	.ascii " rounds of ammo were used before you realized there were too many.\n"
        .ascii "Trying to get away, you got hurt\n"
        .ascii "You lost HP: \0"
run:
        .ascii "\nYou decide to naruto run\n"
        .ascii "Because you ran so fast some ammo fell out of your bag \n"
        .ascii "Ammo lost: \0"

giveup:
        .ascii "\nYou see no light in the end of the tunnel, you let your depression get to you.\n"
        .ascii "You think this journey is taking forever and give up on your family. Poor CORAL! He misses you :(\n\0"


town:
        .ascii "\nYou enter the abandoned building scouting for supplies\n"
        .ascii "You find loads of ammunition!\n"
	.ascii "\n********** MAX AMMO ***********\n\0"
lowAmmo:
        .ascii "\nYour were caught by surprise and when a small group of zombies charged after you pulled out your gun.\n"
	.ascii "***CLICK! CLICK! CLICK!***\n"
        .ascii "----------OUT OF AMMO---------------\n"
        .ascii "Foolishly you got yourself cornered!\n"
        .ascii "YOU WERE EATEN ALIVE!\n\0"

lowScrap:
        .ascii "\nYou don't have enough scraps.\n"
        .ascii "Too busy trying to find some, a zombie unexpectedly bites you!\n"
        .ascii "You die a slow painful death.\n\0"

Fuel:
       .ascii "\nYou ran out of gas and need to walk.\n"
       .ascii "You are left vulnerable and a horde of zombies completely surrounds you out of nowhere.\n"
       .ascii "You realize this is the end when you run out of ammo and accept your fate.\n\0"

survived:
	.ascii "\n+++++++++++++++++++++++ YOU SURVIVED +++++++++++++++++++++++++++"
        .ascii "\nTo your relief, you find your family\n"
        .ascii "Your son CORAL runs and hugs you. \n"
        .ascii "You enjoy the moment and look up to see your wife.\n"
        .ascii "SHE'S WITH ANOTHER MAN! dUN! DUN! dUUUUUUUUUUN!jk jk\n"
	.ascii ".....5 years later and a cure for the infection was discovered\n\0"

lowHP:
           .ascii "\n .--. .-,       .-..-.__ \n"
           .ascii ".'(`.-` \_.-'-./`  |\_( '\__\n"
           .ascii "__.>\ ';  _;---,._|   / __/`'--)\n"
           .ascii "/.--.  : |/' _.--.<|  /  | |\n"
           .ascii "_..-'    `\     /' /`  /_/ _/_/\n"
           .ascii ">_.-``-. `Y  /' _;---.`|/)))) \n"
           .ascii "'` .-''. \|:  \.'   __, .-''`\n"
           .ascii ".'--._ `-:  \/:  /'  '.\    _|_\n"
           .ascii "/.'`\ :;   /'      `-      `-|-`\n"
           .ascii "-`    |     |                |\n"
           .ascii ":.; : |                  .-'~^~`-.\n"
           .ascii "|:    |                .' _     _ `.\n"
           .ascii "|:.   |                | |_) | |_) |\n"
           .ascii ":. :  |                | | | | |   |\n"
           .ascii "  . : ;                |           |\n"
           .ascii "-.'-/\\\/:::.    `\.'-._'.'-'_\\-|           |///.'-\n"
           .ascii "' -.'-.\\'-.'//.-'.`-.'_\\-.'.-\\`=.........=`//-'.\n"


.text
.global _start

_start:
					
	mov $100, %rbx
	mov $100, %r8		#SETS VALUES FOR THE STATS
	mov $0, %r9
	mov $100, %r10
	mov $0, %r11
	mov $30, %r13
	mov $100, %r14	

	mov $intro, %rdx
	call PrintCString

result:	
	add $1, %r11

	cmp $0, %r14
	jle lowFuel
	
	 cmp $1, %r8
        jl lowAmmoEnd	

	cmp $0, %rbx 
	jle deathEnd

	cmp $0, %r10
	jl lowScrapEnd		#READS IF STATS ARE EMPTY,IF SO IT JUMPS TO AN ENDING

	call bulletsUsed
	call stats		
	
	mov $Choice, %rdx
	call PrintCString
	call ScanInt
	cmp $1, %rdx 
	je upgradeTwo
	cmp $2, %rdx
	je resultTwo
	cmp $3, %rdx
	je houseTwo
	call quit
	
upgradeTwo:	
	call gunUpgrade
	jmp movingOn
resultTwo:   
	call townChoice
	jmp movingOn

houseTwo: 
	call houseStay

movingOn:	
	call randomEvent
	cmp $10, %rdx
	jle hordeTwo
	cmp $20, %rdx
	jle banditEvent
	jmp keepGoing

hordeTwo:
	call spotHorde
	jmp keepGoing

banditEvent:
	call spotBandits
	jmp keepGoing

keepGoing:
	cmp $20, %r11
	jl result

	mov $2, %rdx
        call SetForeColor
	mov $survived, %rdx
	call PrintCString	

	call EndProgram	
gunUpgrade:
	sub $20, %r10
	cmp $0, %r10
	jl lowScrapEnd
	mov $upWeapon, %rdx
	call PrintCString
	add $1, %r9
	add $5, %r13		#WEAPON UPGRADE. INCREASES WINRATE BY 5
	ret
	
townChoice:
	mov $100, %r8
	call PrintInt
	mov $town, %rdx
	call PrintCString
	cmp $0 ,%r8			#DRIVE TO TOWN. - IN FUEL
	jl lowAmmoEnd

	sub $15, %r14
	cmp $0, %r14
	jl lowFuel

	mov $7, %rdx
        call SetForeColor
	ret 
	

quit:
	mov $giveup, %rdx
	call PrintCString
	call EndProgram

bulletsUsed:
	cmp $1, %r11
	je back
	mov $15, %rdx
	call Random
			#AMMO LOST DURING JOURNEY.REPEATS AFTER EVERY ACTION/RANDOM EVENT
	add $20, %rdx
	call Random
	sub %rdx, %r8
	mov %rdx, %r15
	mov $lostAmmo, %rdx
	call PrintCString
	mov $6, %rdx
        call SetForeColor

	mov %r15, %rdx
	call PrintInt 

	mov $7, %rdx
        call SetForeColor

back:	
	ret
	

stats:
	cmp $1, %r8
	jl lowAmmoEnd

	mov $weekOne, %rdx
	call PrintCString
	mov %r11, %rdx
	call PrintInt
	
	mov $weekTwo, %rdx
	call PrintCString	

	mov $1, %rdx
        call SetForeColor

	mov $Health, %rdx
	call PrintCString
					#STATS COUNTER
	mov %rbx, %rdx
	call PrintInt
	mov $7, %rdx
	call SetForeColor
	
	mov $6, %rdx
        call SetForeColor

	mov $Ammo, %rdx
	call PrintCString
	mov %r8, %rdx
	call PrintInt
	mov $7, %rdx
	call SetForeColor
	
	mov $2, %rdx
        call SetForeColor

	mov $Level, %rdx
	call PrintCString
	mov %r9, %rdx
	call PrintInt

	mov $3, %rdx
        call SetForeColor

	mov $Scraps, %rdx	
	call PrintCString
	mov %r10, %rdx
	call PrintInt

	mov $5, %rdx
        call SetForeColor

	mov $Gas, %rdx
	call PrintCString
	mov %r14, %rdx
	call PrintInt
	mov $7, %rdx
	call SetForeColor

	cmp $1, %r8
	jl lowAmmoEnd
	ret

randomEvent:
	mov $100, %rdx
	call Random	 
	ret

spotBandits:

        mov $1, %rdx
        call SetForeColor
	mov $introBandits, %rdx
	call PrintCString
	mov $7, %rdx
        call SetForeColor
	call ScanInt

	cmp $2, %rdx
	je Return
	mov $7, %rdx
        call SetForeColor
	mov $100, %rdx
	call Random
	#mov $7, %rdx
        #call SetForeColor
	cmp $50, %rdx
	jle banditLoss
	jmp banditKill
banditLoss:
	mov $loseBandits, %rdx
	call PrintCString
	mov $6, %rdx
	call SetForeColor
	mov $15, %rdx
	call Random
	add $10, %rdx
	call PrintInt
	sub %rdx, %r8
	mov $7, %rdx
	call SetForeColor

	mov $hpBandits, %rdx
	call PrintCString
	mov $1, %rdx
        call SetForeColor
	mov $10, %rdx
        call Random
        add $20, %rdx
	call PrintInt
        sub %rdx, %rbx
	mov $7, %rdx
        call SetForeColor
	
	mov $hpBanditsTwo, %rdx
	call PrintCString
	
	ret

banditKill:
	mov $killBandits, %rdx
	call PrintCString
	mov $6, %rdx
	call SetForeColor
	mov $15, %rdx
	call Random
	add $10, %rdx		#BOTH GOOD  AFFECT AMMO. BAD EFFECTS BOTH HP AND AMMO
	call PrintInt
	sub %rdx, %r8
	mov $7, %rdx
	call SetForeColor

	ret
		

spotHorde:

	mov $1, %rdx
        call SetForeColor
	mov $Horde, %rdx
	call PrintCString
	mov $7, %rdx
        call SetForeColor
	call ScanInt

	cmp $1, %rdx
	je Chance
	mov $run, %rdx
	call PrintCString
	mov $6, %rdx
	call SetForeColor
	mov $10, %rdx
	add $10, %rdx
	call PrintInt
	sub %rdx, %r8
	mov $7, %rdx
	call SetForeColor
	ret
Chance:
	mov $100, %rdx			#win if n=<r13
	call Random
	cmp %rdx, %r13
	jge victory
	jmp defeat

victory:
	#loot would be 20-40 golds
	mov $30, %rdx
	call Random
	add $50, %rdx
	add %rdx, %r10 
	mov %rdx, %r15
	mov $win, %rdx
	call PrintCString
	mov $3, %rdx
	call SetForeColor 
	mov %r15, %rdx
	call PrintInt
	mov $7, %rdx
	call SetForeColor
	jmp Return
defeat:
	mov $75, %rdx
	call Random
	add $25, %rdx
	sub %rdx, %rbx
	mov %rdx, %r15

	 mov $5, %rdx
	call Random
        add $5, %rdx
        sub %rdx, %r8
        mov $6, %rdx
        call SetForeColor
        call PrintInt
        mov $7, %rdx
        call SetForeColor

	mov $lost, %rdx
	call PrintCString
	mov $1, %rdx
	call SetForeColor
	mov %r15, %rdx
	call PrintInt
	mov $7, %rdx
	call SetForeColor
Return:
	ret	

houseStay:
	cmp $0, %r8
	jl lowAmmoEnd
	mov $House, %rdx
	call PrintCString
	
        sub $10, %r10
	mov %r10, %rdx
        cmp $0, %r10
        jl lowScrapEnd


	cmp $100, %rbx
	jge maxHealth
	add $10, %rbx	

	ret
maxHealth:	
	mov $100, %rbx
	ret

lowFuel:
	mov $5, %rdx
        call SetForeColor
	mov $Fuel, %rdx
	call PrintCString
	call EndProgram

deathEnd:
	mov $1, %rdx
	call SetForeColor
	mov $lowHP, %rdx
	call PrintCString
	mov $7, %rdx
	call SetForeColor
	call EndProgram

lowScrapEnd:
	mov $3, %rdx
        call SetForeColor
	mov $lowScrap, %rdx
	call PrintCString
	call EndProgram

lowAmmoEnd:
	mov $6, %rdx
	call SetForeColor
	mov $lowAmmo, %rdx
	call PrintCString
	mov $7 ,%rdx
	call SetForeColor
	call EndProgram

