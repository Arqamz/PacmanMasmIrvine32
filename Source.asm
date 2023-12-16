Include Irvine32.inc
includelib winmm.lib

PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD

.data

splashScreenText			BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0ah
					BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0ah
					BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0ah
					BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0ah
					BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+@#::::::*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0ah
					BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%=::::::::::-@@@@@@@@@@@@#:+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0ah
					BYTE "@@@@@#@@@#-:-%@@@@@#@:%%@@@@@@-::::::::::*@%@@@@@@@@@@@%:::@@@@@@@@+:@@@@@@@@@*%@%@@@@@@@@@@@@@@@@@@@@@",0ah
					BYTE "@#@::::::::::::=@@@@:::-@@@@@#::::::::-@#@@@@@@+---#@@#%::::@%@%@+:::@@@@@@@#@::-@@@@@@@%@@@@@@@@@@@@@@",0ah
					BYTE "@@@:::::::+::::*@@*=:::::@@@@#::::::::=@@@@@@@@+---#%@*%:::::+@=:::::@@@@@@%*::::@@@@@@@@:@@@@@@-*@@@@@",0ah
					BYTE "@@@*::::::+:::==@%@:::::::*@@@:::::::::+#+=@@@@@@@@@@@#+:::::::::::::@@@@#@:::::::@@@@@%+::@@@##::::-@@",0ah
					BYTE "@@@@:::::::=#=:@#@::::@+::@-@@@::::::::::#-@@@@@@@@@@@@-:::::::::::=-@@@@=:::=%:::@@@@@@::::%@@:::::@%@",0ah
					BYTE "@@@*-::::-+=@@@@**:::::::::*=@@@@:::::::=%@@@@@@@@@@@@@::::::::--:--*@#@::::::-::@:@@@++::::+@#::::-@@@",0ah
					BYTE "@@@%#:::::#:@@@@@::::::::==::=@@@@@@@@@@@@@@@@@@@@@@@@@@@%%%@@@#**+:@@=::::::::::::%@@@::::::+:::::@%@@",0ah
					BYTE "@@@@@::::=%:@@@@=**#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@%%@#*=:=*+#:@@*::::::::::+-#@@@",0ah
					BYTE "@@@@@#:=+#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%@%@%@@::::::::::%:@@@@@",0ah
					BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#+:=*#**%@@@@",0ah
					BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%@@#@@@@@@",0ah
					BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0ah
					BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0ah
					BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0ah,0ah,0ah,0ah,0ah,0	


	enterName			BYTE "                            ___ _  _ _____ ___ ___   _  _   _   __  __ ___ ", 0ah
					BYTE "                           | __| \| |_   _| __| _ \ | \| | /_\ |  \/  | __|", 0ah
					BYTE "                           | _|| .` | | | | _||   / | .` |/ _ \| |\/| | _| ", 0ah
					BYTE "                           |___|_|\_| |_| |___|_|_\ |_|\_/_/ \_\_|  |_|___|", 0ah, 0

	map				BYTE "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||",0ah
					BYTE "||***************************************************************************************************||",0ah
					BYTE "||*||||||*||||||*||||||||||||||||*||||*||||||||*|||*|||*||||||||*||||*||||||||||||||||*||||||*||||||*||",0ah
					BYTE "||o||||||*||||||******o||||*******||||*||||||||*|||*|||*||||||||*||||*******||||*******||||||*||||||*||",0ah
					BYTE "||*||||||*||||||*|||||*||||*|||||*||||*||||||||*|||*|||*||||||||*||||*|||||*||||*|||||*||||||*||||||*||",0ah
					BYTE "||********||||||*|||||*||||*|||||*||||**********|||*|||*********o||||*|||||*||||*|||||*||||||o*******||",0ah
					BYTE "||*|||||||||||||*|||||*||||*|||||*|||||||||||||*|||*|||*|||||||||||||*|||||*||||*|||||*|||||||||||||*||",0ah
					BYTE "||*|||||||||||||*|||||******|||||*|||||||||||||*|||*|||*|||||||||||||*|||||******|||||*|||||||||||||*||",0ah
					BYTE "/**********************||||*************************************************||||**********************/",0ah
					BYTE "||*|||||||||||||*|||||******|||||*|||||||||||||||||||||||||||||||||||*|||||******|||||*|||||||||||||*||",0ah
					BYTE "||*|||||||||||||*|||||*||||*|||||*|||||||||||||||||||||||||||||||||||*|||||*||||*|||||*|||||||||||||*||",0ah
					BYTE "||********||||||*******||||***************                   ***************||||o******||||||********||",0ah
					BYTE "||*||||||*||||||*||||||||||||||||*||*||||| ||||||-----|||||| |||||*||*||||||||||||||||*||||||*||||||*||",0ah
					BYTE "||*||||||*||||||*||||||||||||||||*||****|| ||             || ||****||*||||||||||||||||*||||||*||||||*||",0ah
					BYTE "||*||||||o*******||||||||||||||||*|||||*|| || ||||||||||| || ||*|||||*||||||||||||||||********||||||*||",0ah
					BYTE "||*|||||||||||||*******||||*******||****|| ||             || ||****||*******||||*******|||||||||||||*||",0ah
					BYTE "||*|||||||||||||*|||||*||||*|||||*||*||||| ||||||||||||||||| |||||*||*|||||*||||*|||||*|||||||||||||*||",0ah
					BYTE "/***************************|||||*********                   ********o|||||***************************/",0ah
					BYTE "||*||||*||||||||*||||||||||*|||||||||*||||*|||||||||||||||||*||||*|||||||||*||||||||||*||||||||*||||*||",0ah
					BYTE "||*||||*||||||||*||||||||||*|||||||||*||||*******|||||*******||||*|||||||||*||||||||||*||||||||*||||*||",0ah
					BYTE "||*||||*||||||||*||||************||||*||||||||||*|||||*||||||||||*||||************||||*||||||||*||||*||",0ah
					BYTE "||*||||**********||||*|||||*||||*||||*||||||||||*|||||*||||||||||*||||*||||*|||||*||||**********||||*||",0ah
					BYTE "||*||||||||*||||***********o||||***************************************||||************||||*||||||||*||",0ah
					BYTE "||*||||||||*||||*||||*|||||*||||*||||*||||*|||||||||||||||||*||||*||||*||||*|||||*||||*||||*||||||||*||",0ah
					BYTE "||*||||*****||||*||||************||||*||||*|||||*******|||||*||||*||||************||||*||||****o||||*||",0ah
					BYTE "||*||||*||||||||*||||||||||||||||||||*||||*|||||*|||||*|||||*||||*||||||||||||||||||||*||||||||*||||*||",0ah
					BYTE "||*||||*||||||||*||||||||||||||||||||*||||*|||||*|||||*|||||*||||*||||||||||||||||||||*||||||||*||||*||",0ah
					BYTE "||o**********************************************|||||***********************************************||",0ah
					BYTE "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||",0ah,0ah,0ah,0

mapTemp					BYTE "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||",0ah
					BYTE "||***************************************************************************************************||",0ah
					BYTE "||*||||||*||||||*||||||||||||||||*||||*||||||||*|||*|||*||||||||*||||*||||||||||||||||*||||||*||||||*||",0ah
					BYTE "||o||||||*||||||******o||||*******||||*||||||||*|||*|||*||||||||*||||*******||||*******||||||*||||||*||",0ah
					BYTE "||*||||||*||||||*|||||*||||*|||||*||||*||||||||*|||*|||*||||||||*||||*|||||*||||*|||||*||||||*||||||*||",0ah
					BYTE "||********||||||*|||||*||||*|||||*||||**********|||*|||*********o||||*|||||*||||*|||||*||||||o*******||",0ah
					BYTE "||*|||||||||||||*|||||*||||*|||||*|||||||||||||*|||*|||*|||||||||||||*|||||*||||*|||||*|||||||||||||*||",0ah
					BYTE "||*|||||||||||||*|||||******|||||*|||||||||||||*|||*|||*|||||||||||||*|||||******|||||*|||||||||||||*||",0ah
					BYTE "/**********************||||*************************************************||||**********************/",0ah
					BYTE "||*|||||||||||||*|||||******|||||*|||||||||||||||||||||||||||||||||||*|||||******|||||*|||||||||||||*||",0ah
					BYTE "||*|||||||||||||*|||||*||||*|||||*|||||||||||||||||||||||||||||||||||*|||||*||||*|||||*|||||||||||||*||",0ah
					BYTE "||********||||||*******||||***************                   ***************||||o******||||||********||",0ah
					BYTE "||*||||||*||||||*||||||||||||||||*||*||||| ||||||-----|||||| |||||*||*||||||||||||||||*||||||*||||||*||",0ah
					BYTE "||*||||||*||||||*||||||||||||||||*||****|| ||             || ||****||*||||||||||||||||*||||||*||||||*||",0ah
					BYTE "||*||||||o*******||||||||||||||||*|||||*|| || ||||||||||| || ||*|||||*||||||||||||||||********||||||*||",0ah
					BYTE "||*|||||||||||||*******||||*******||****|| ||             || ||****||*******||||*******|||||||||||||*||",0ah
					BYTE "||*|||||||||||||*|||||*||||*|||||*||*||||| ||||||||||||||||| |||||*||*|||||*||||*|||||*|||||||||||||*||",0ah
					BYTE "/***************************|||||*********                   ********o|||||***************************/",0ah
					BYTE "||*||||*||||||||*||||||||||*|||||||||*||||*|||||||||||||||||*||||*|||||||||*||||||||||*||||||||*||||*||",0ah
					BYTE "||*||||*||||||||*||||||||||*|||||||||*||||*******|||||*******||||*|||||||||*||||||||||*||||||||*||||*||",0ah
					BYTE "||*||||*||||||||*||||************||||*||||||||||*|||||*||||||||||*||||************||||*||||||||*||||*||",0ah
					BYTE "||*||||**********||||*|||||*||||*||||*||||||||||*|||||*||||||||||*||||*||||*|||||*||||**********||||*||",0ah
					BYTE "||*||||||||*||||***********o||||***************************************||||************||||*||||||||*||",0ah
					BYTE "||*||||||||*||||*||||*|||||*||||*||||*||||*|||||||||||||||||*||||*||||*||||*|||||*||||*||||*||||||||*||",0ah
					BYTE "||*||||*****||||*||||************||||*||||*|||||*******|||||*||||*||||************||||*||||****o||||*||",0ah
					BYTE "||*||||*||||||||*||||||||||||||||||||*||||*|||||*|||||*|||||*||||*||||||||||||||||||||*||||||||*||||*||",0ah
					BYTE "||*||||*||||||||*||||||||||||||||||||*||||*|||||*|||||*|||||*||||*||||||||||||||||||||*||||||||*||||*||",0ah
					BYTE "||o**********************************************|||||***********************************************||",0ah
					BYTE "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||",0ah,0ah,0ah,0

instructions				BYTE "                                                                                                        ",0ah
					BYTE "       COLLECT PELLETS                                                        DODGE GHOSTS!             ",0ah
					BYTE "             [*]                                                                [A B C D]               ",0ah
					BYTE "                                                                                                        ",0ah
					BYTE "                                                                                                        ",0ah
					BYTE "                                                  ^                                                     ",0ah
					BYTE "                                                  W                                                     ",0ah
					BYTE "                                                                                                        ",0ah
					BYTE " /    <- USE THE PORTALS                <   A     O     D   >                         TO TELEPORT <- /  ",0ah
					BYTE "                                                                                                        ",0ah
					BYTE "                                                  S                                                     ",0ah
					BYTE "                                                  v                                                     ",0ah
					BYTE "                                                                                                        ",0ah
					BYTE "                                                                                                        ",0ah
					BYTE "       POWER PELLETS                 USE WASD TO MOVE YOUR PACMAN             BONUS FRUITS              ",0ah
					BYTE "           [O]                                                                  [. . .]                 ",0

pressPlay				BYTE "                                          PRESS P TO START                                              ",0ah, 0

wall                			BYTE "|"
pellet              			BYTE "*"
powerPellet         			BYTE "o"
bar					BYTE "-"
portal					BYTE "/"
fruit               			BYTE "."
cherry              			BYTE 235
orange              			BYTE 234
apple               			BYTE 232


level					BYTE 1


.code

main PROC

call SplashScreen
call InstructionScreen
call PrintMaze

 exit
main ENDP

;;;;;Pacman Procedures;;;;;

;;;;;Ghost Procedures;;;;;

;;;;;Screen and Print Procedures;;;;;

SplashScreen PROC
	call clrscr

	mov dl, 0
	mov dh, 6
	call gotoxy

	mov esi, OFFSET splashScreenText
	mov ecx, 2184

ToPrintSplashScreen:
	mov eax, blue
	call SetTextColor

	mov bl, [esi]

	; Check if it's not '@' and print in yellow
	cmp bl, "@"
	jne nonBackground
	mov bl, " "
	jmp printSplashChar

nonBackground:
	mov eax, yellow
	call SetTextColor

printSplashChar:
	mov al, bl
	call WriteChar

	inc esi
	LOOP ToPrintSplashScreen

	mov eax, 1000
	call delay

	mov dl, 0
	mov dh, 30
	call gotoxy
	
	mov edx, OFFSET pressPlay
	call WriteString

	keepreading:
	call ReadChar

	cmp al, "p"
	jne keepreading

	ret
SplashScreen ENDP

InstructionScreen PROC
	call clrscr
	mov dl, 0
	mov dh, 0
	call gotoxy

	mov eax, yellow
	call SetTextColor
	mov edx, offset instructions 
	call WriteString

	mov dl, 12
	mov dh, 30
	call Gotoxy
	mov eax, yellow
	call SetTextColor
	mov al, "o"
	call WriteChar	

	mov dl, 14
	mov dh, 4
	call Gotoxy
	mov eax, yellow
	call SetTextColor
	mov al, 249
	call WriteChar	

	mov dl, 1
	mov dh, 16
	call Gotoxy
	mov al, 177
	call WriteChar

	mov dl, 101
	mov dh, 16
	call Gotoxy
	mov al, 177
	call WriteChar	
	
	mov dl, 81
	mov dh, 30
	call Gotoxy
	mov eax, red
	call SetTextColor
	mov al, cherry
	call WriteChar

	mov dl, 83
	mov dh, 30
	call Gotoxy
	mov eax, brown
	call SetTextColor
	mov al, orange
	call WriteChar

	mov dl, 85
	mov dh, 30
	call Gotoxy
	mov eax, 13
	call SetTextColor
	mov al, apple
	call WriteChar

	mov dl, 81
	mov dh, 4
	call Gotoxy
	mov eax, red
	call SetTextColor
	mov al, 146
	call WriteChar

	mov dl, 83
	mov dh, 4
	call Gotoxy
	mov eax, 13
	call SetTextColor
	mov al, 157
	call WriteChar
	
	mov dl, 85
	mov dh, 4
	call Gotoxy
	mov eax, cyan
	call SetTextColor
	mov al, 168
	call WriteChar

	mov dl, 87
	mov dh, 4
	call Gotoxy
	mov eax, green
	call setTextColor
	mov al, 128
	call WriteChar

	mov eax, 5000
	call delay

	ret
InstructionScreen ENDP

PrintMaze PROC
	call clrscr
	mov dl, 0
	mov dh, 0
	call gotoxy
	mov esi, OFFSET map
	mov ecx, 3019

loopToPrintMaze:
	mov bl, [esi]
	call PrintCharacter
	inc esi
	Loop loopToPrintMaze
	
	ret
PrintMaze ENDP

PrintCharacter PROC
	
	mov al, level
	cmp al, 1
	jne cyanwalls
	mov eax, blue + (black*16)
	call SetTextColor
	jmp checkWall

cyanwalls:
	cmp al, 2
	jne redwalls
	mov eax, lightCyan + (black*16)
	call SetTextColor
	jmp checkWall

redwalls:
	mov eax, red + (black*16)
	call SetTextColor
	jmp checkWall

checkWall:
	cmp bl, wall
	jne checkPortal

	mov bl, 219
	jmp printChar

checkPortal:
	cmp bl, portal
	jne checkBar

	mov bl, 177
	jmp printChar

checkBar:
	cmp bl, bar
	jne checkAsterisk

	mov bl, 240
	jmp printChar

checkAsterisk:
	cmp bl, pellet
	je asterisk

checkPowerPellet:
	cmp bl, powerPellet
	je powerPelletChr


printChar:
	mov al, bl
	call WriteChar

	ret

powerPelletChr:
	mov eax, yellow
	call SetTextColor

	mov al, "o"
	call WriteChar

	ret 

asterisk:
	mov eax, yellow
	call SetTextColor

	mov al, 249
	call WriteChar

	ret 

charPrinted:
	ret

PrintCharacter ENDP


END main
