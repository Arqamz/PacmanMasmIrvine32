Include Irvine32.inc
includelib winmm.lib

PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD

.data

;; Printing

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


enterName				BYTE "                            ___ _  _ _____ ___ ___   _  _   _   __  __ ___ ", 0ah
					BYTE "                           | __| \| |_   _| __| _ \ | \| | /_\ |  \/  | __|", 0ah
					BYTE "                           | _|| .` | | | | _||   / | .` |/ _ \| |\/| | _| ", 0ah
					BYTE "                           |___|_|\_| |_| |___|_|_\ |_|\_/_/ \_\_|  |_|___|", 0ah, 0

viewHighscores				BYTE "		   _    _ _____ _____ _    _  _____  _____ ____  _____  ______  _____ ",0ah 
					BYTE "		  | |  | |_   _/ ____| |  | |/ ____|/ ____/ __ \|  __ \|  ____|/ ____|",0ah
					BYTE "		  | |__| | | || |  __| |__| | (___ | |   | |  | | |__) | |__  | (___  ",0ah
					BYTE "		  |  __  | | || | |_ |  __  |\___ \| |   | |  | |  _  /|  __|  \___ \ ",0ah
					BYTE "		  | |  | |_| || |__| | |  | |____) | |___| |__| | | \ \| |____ ____) |",0ah
					BYTE "		  |_|  |_|_____\_____|_|  |_|_____/ \_____\____/|_|  \_\______|_____/ ",0ah,0

gameOver				BYTE 10, 9,9, 32, 32, 220, 219, 219, 219, 219, 32, 32, 220, 220, 220, 32, 32, 32, 32, 32, 32, 32, 219, 219, 219, 220, 32, 220, 219, 219, 219, 178, 178, 219, 219, 219, 219
					BYTE 219, 32, 32, 177, 219, 219, 219, 219, 219, 32, 32, 32, 219, 219, 177, 32, 32, 32, 219, 178, 178, 219, 219, 219, 219, 219, 32, 32, 219, 219, 223, 219, 219, 219, 32
					BYTE 32, 10, 9,9, 32, 219, 219, 177, 32, 223, 219, 177, 177, 219, 219, 219, 219, 220, 32, 32, 32, 32, 178, 219, 219, 177, 223, 219, 223, 32, 219, 219, 177, 178, 219, 32, 32
					BYTE 32, 223, 32, 177, 219, 219, 177, 32, 32, 219, 219, 177, 178, 219, 219, 176, 32, 32, 32, 219, 177, 178, 219, 32, 32, 32, 223, 32, 178, 219, 219, 32, 177, 32, 219
					BYTE 219, 177, 10, 9,9, 177, 219, 219, 176, 220, 220, 220, 176, 177, 219, 219, 32, 32, 223, 219, 220, 32, 32, 178, 219, 219, 32, 32, 32, 32, 178, 219, 219, 176, 177, 219, 219
					BYTE 219, 32, 32, 32, 177, 219, 219, 176, 32, 32, 219, 219, 177, 32, 178, 219, 219, 32, 32, 219, 177, 176, 177, 219, 219, 219, 32, 32, 32, 178, 219, 219, 32, 176, 220
					BYTE 219, 32, 177, 10, 9,9, 176, 178, 219, 32, 32, 219, 219, 178, 176, 219, 219, 220, 220, 220, 220, 219, 219, 32, 177, 219, 219, 32, 32, 32, 32, 177, 219, 219, 32, 177, 178
					BYTE 219, 32, 32, 220, 32, 177, 219, 219, 32, 32, 32, 219, 219, 176, 32, 32, 177, 219, 219, 32, 219, 176, 176, 177, 178, 219, 32, 32, 220, 32, 177, 219, 219, 223, 223
					BYTE 219, 220, 32, 32, 10, 9,9, 176, 177, 178, 219, 219, 219, 223, 177, 32, 178, 219, 32, 32, 32, 178, 219, 219, 177, 177, 219, 219, 177, 32, 32, 32, 176, 219, 219, 177, 176
					BYTE 177, 219, 219, 219, 219, 177, 176, 32, 219, 219, 219, 219, 178, 177, 176, 32, 32, 32, 177, 223, 219, 176, 32, 32, 176, 177, 219, 219, 219, 219, 177, 176, 219, 219, 178
					BYTE 32, 177, 219, 219, 177, 10, 9,9, 32, 176, 177, 32, 32, 32, 177, 32, 32, 177, 177, 32, 32, 32, 178, 177, 219, 176, 176, 32, 177, 176, 32, 32, 32, 176, 32, 32, 176
					BYTE 176, 176, 32, 177, 176, 32, 176, 176, 32, 177, 176, 177, 176, 177, 176, 32, 32, 32, 32, 176, 32, 32, 176, 32, 32, 176, 176, 32, 177, 176, 32, 176, 176, 32, 177
					BYTE 178, 32, 176, 177, 178, 176, 10,9,9, 32, 32, 176, 32, 32, 32, 176, 32, 32, 32, 177, 32, 32, 32, 177, 177, 32, 176, 176, 32, 32, 176, 32, 32, 32, 32, 32, 32
					BYTE 176, 32, 176, 32, 176, 32, 32, 176, 32, 32, 176, 32, 177, 32, 177, 176, 32, 32, 32, 32, 176, 32, 176, 176, 32, 32, 32, 176, 32, 176, 32, 32, 176, 32, 32
					BYTE 176, 177, 32, 176, 32, 177, 176, 10, 9,9, 176, 32, 176, 32, 32, 32, 176, 32, 32, 32, 176, 32, 32, 32, 177, 32, 32, 32, 176, 32, 32, 32, 32, 32, 32, 176, 32
					BYTE 32, 32, 32, 32, 32, 176, 32, 32, 32, 176, 32, 176, 32, 176, 32, 177, 32, 32, 32, 32, 32, 32, 32, 176, 176, 32, 32, 32, 32, 32, 176, 32, 32, 32, 32
					BYTE 32, 176, 176, 32, 32, 32, 176, 32, 10, 9,9, 32, 32, 32, 32, 32, 32, 176, 32, 32, 32, 32, 32, 32, 32, 176, 32, 32, 176, 32, 32, 32, 32, 32, 32, 32, 176
					BYTE 32, 32, 32, 32, 32, 32, 176, 32, 32, 176, 32, 32, 32, 32, 176, 32, 176, 32, 32, 32, 32, 32, 32, 32, 32, 176, 32, 32, 32, 32, 32, 176, 32, 32, 176
					BYTE 32, 32, 32, 176, 32, 32, 32, 32, 32, 10, 9,9, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32
					BYTE 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 176, 32, 32, 32, 32, 32, 32, 32, 32, 32
					BYTE 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10,0						

map					BYTE "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||",0ah
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
pressPToStart				BYTE "                                          PRESS P TO PLAY                                               ",0

pressTo					BYTE "                                   -------------------------------                                      ",0ah
					BYTE "                                     PRESS 'P' TO START NEW GAME                                        ",0ah
					BYTE "                                         PRESS 'X' TO EXIT                                              ",0ah
					BYTE "                                    PRESS 'H' TO VIEW HIGH SCORES                                       ",0ah
					BYTE "                                   -------------------------------                                      ",0ah, 0

credits					BYTE "A game by Arqamz",0ah,0

yourScoreText				BYTE "YOUR SCORE: ",0

readyText           BYTE "READY",0
levelText           BYTE "LEVEL",0
scoreText           BYTE "SCORE",0
pauseText			BYTE "PAUSED",0
blinkText			BYTE "      ",0

;; Constants

wall				BYTE "|"
pellet              BYTE "*"
powerPellet         BYTE "o"
bar					BYTE "-"
portal				BYTE "/"
fruit               BYTE "."
cherry              BYTE 235
orange              BYTE 234
apple				BYTE 232

nameSize            BYTE 8
scoreSize			BYTE 5
levelSize           BYTE 1

carriageReturn		BYTE 13
lineFeed			BYTE 10

;; GAME
score				WORD 00
playername          BYTE 8 DUP (?)
level				BYTE 1
lives				BYTE 3

inputChar           BYTE ?
	
currentFruit        BYTE 235

xCharacterAt        BYTE 0
yCharacterAt        BYTE 0
characterAtXY       BYTE 0
pelletCounter		WORD 0

levelChangedFlag	BYTE 0
gameOverFlag		BYTE 0

;; Pacman

xPos                BYTE ?
yPos                BYTE ?
currentPacmanDir    BYTE 6

tempxPos            BYTE 100
tempyPos            BYTE 2
tempDirection       BYTE 6

pacmanCharacter     BYTE 219

collision           BYTE 0
eatableCollected    BYTE 0
fruitCollected      BYTE 0

;; Sounds

introSound          BYTE "pacman_beginning.wav" , 0
chompSound          BYTE "pacman_chomp.wav" , 0
deathSound          BYTE "pacman_death.wav" , 0
fruitSound          BYTE "pacman_eatfruit.wav" , 0
eatghostSound       BYTE "pacman_eatghost.wav" , 0
oneUpSound          BYTE "pacman_extrapac.wav" , 0
intermissionSound   BYTE "pacman_intermission.wav" , 0
ghostSound          BYTE "pacman_ghostsiren.wav" , 0
powerupSound        BYTE "pacman_powerupmode.wav" , 0
powerpelletSound    BYTE "pacman_powerpellet.wav" , 0

SND_FILENAME        DWORD 00020000h
SND_LOOP            DWORD 00000008h
SND_ASYNC           DWORD 00000001h
SND_NOSTOP          DWORD 00000010h

;; FileHandling

fileName db "highscores.txt", 0
bufferSize = 200
readBuffer db bufferSize dup(0), 0
writeBuffer db bufferSize dup(0), 0
scoreStr db 5 dup(30h), 0
inserted db 0
filehandle HANDLE ?

.code

main PROC
	;call UpdateHighscores
	call CreditScreen
	call SplashScreen
	call InstructionScreen
	call Game
	invoke ExitProcess, 0
	exit
main ENDP

;;;;;Game Procedures;;;;;

GetAllTimeHighscore PROC
ret
GetAllTimeHighscore ENDP

Game PROC
	mov level, 1
	mov score, 0
	; ENTER NAME
startGame:
	mov levelChangedFlag, 0
	mov pelletCounter, 0
	call ResetMap
	call SetupGameScreen
	call GameLoop
	mov ah, gameOverFlag
	mov al, levelChangedFlag
	cmp al, 1
	je startGame
	cmp ah, 1
	jne startGame
	call GameOverScreen
	ret
Game ENDP

ResetMap PROC
	mov esi, OFFSET mapTemp
	mov edi, OFFSET map
	mov ecx, 3019

toResetMap:
	mov bl, [esi]
	mov [edi], bl
	inc esi
	inc edi
	Loop toResetMap
	ret
ResetMap ENDP

GameLoop PROC
toGameLoop:
	call LevelChange
	mov al, levelChangedFlag
	cmp al, 1
	je exitGameLoop
	call IfOneUp
	call GenerateFruit
	call DisplayLevelScoreLives

	mov eax, 50
	call delay

	;call BlinkyPinkyInkyClyde
	; CALL CHECK PACMAN COLLIDING WITH GHOSTS
	; IF TRUE LIVES --
	; IF LIVES <= 0
	; SET GAME OVER FLAG AND RET 
	; mov ah, gameOverFlag
	; cmp ah, 1
	; je exitGameLoop

	call ReadKey
	cmp al, 1
	je callMovementFunction
	mov inputChar,al

	cmp inputChar,"X"
	mov gameOverFlag, 1
	je exitGameLoop

	cmp inputChar, "p"
	jne callMovementFunction
	call pauseScreen

callMovementFunction:
	call PacmanMovement
	jmp toGameLoop

exitGameLoop:
	ret
GameLoop ENDP

LevelChange PROC
	mov ax, pelletCounter
	cmp ax, 250;948
	jne noLevelChange
	xor ax, ax
	mov pelletCounter, ax
	mov al, level
	inc al
	mov level, al
	mov levelChangedFlag, 1
noLevelChange:
	ret
LevelChange ENDP

IfOneUp PROC
	cmp score, 12500
	jne noOneUp
	;invoke PlaySound, 0, 0, 0
	;mov eax, SND_FILENAME  
	;or eax, SND_NOSTOP  
	;or eax, SND_ASYNC 
	;invoke PlaySound, offset oneUpSound, 0, eax
	mov bl, lives
	inc bl
	mov lives, bl
noOneUp:
	ret
IfOneUp ENDP

GenerateFruit PROC
	cmp fruitCollected, 1
	je generated
	cmp score, 1000
	jne printOrange

printCherry:
	mov dl, 51
	mov dh, 17
	call gotoxy

	mov eax, red
	call SetTextColor

	mov al, cherry
	mov esi, OFFSET map
	add esi, 1820
	mov cl, fruit
	mov [esi], cl
	call WriteChar

	jmp generated

printOrange:
	cmp score, 7000
	jne printApple
	mov fruitCollected, 0
	mov dl, 51
	mov dh, 17
	call gotoxy

	mov eax, brown
	call SetTextColor

	mov al, orange
	mov esi, OFFSET map
	add esi, 1820
	add esi, 1820
	mov cl, fruit
	mov [esi], cl
	call WriteChar

	jmp generated

printApple:
	cmp score, 15000
	jne generated
	mov fruitCollected, 0
	mov dl, 51
	mov dh, 17
	call gotoxy
	
	mov eax, 13
	call SetTextColor

	mov al, apple
	mov esi, OFFSET map
	add esi, 1820
	mov cl, fruit
	mov [esi], cl
	call WriteChar

	jmp generated

generated:
	ret
GenerateFruit ENDP

UpdateCurrentFruit PROC
	mov dx, score
	cmp dx, 1000
	jne checkFourK
	mov currentFruit, 235
	jmp updatedCurrentFruit

checkFourK:
	cmp dx, 4000
	jne checkTenK
	mov currentFruit, 235
	jmp updatedCurrentFruit

checkTenK:
	cmp dx, 10000
	jne checkTwentyK
	mov currentFruit, 234
	jmp updatedCurrentFruit

checkTwentyK:
	cmp dx, 20000
	jne updatedCurrentFruit
	mov currentFruit, 232

updatedCurrentFruit:
	ret
UpdateCurrentFruit ENDP

CheckCharacterAtIndex PROC
	mov esi, OFFSET map
	xor eax, eax
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx

	mov bl, yCharacterAt
	imul ebx, 104
	mov dl, xCharacterAt
	add ebx, edx
	add esi, ebx

	mov al, [esi]
	mov characterAtXY, al
	ret
CheckCharacterAtIndex ENDP

;;;;;FileHandling Procedures;;;;;

UpdateHighscores PROC
    mov inserted, 0

	call ConvertCurrentScoreToString
	
	mov edx,OFFSET filename
	call OpenInputFile
	mov fileHandle, eax
	
	fileOpened:
		mov edx, OFFSET readBuffer
		mov ecx, bufferSize
		call ReadFromFile

		mov esi, offset readBuffer
		mov edi, offset writeBuffer
		
		writetoFileLoop:
			cmp byte ptr [esi], 0
			je bufferEnded
			cmp byte ptr [esi], ' '
			je bufferEnded
			bufferNotEnded:
				cmp inserted, 1
				je writeCurrentReadBufferLine
				call CompareScores
				jle writeCurrentReadBufferLine

				WriteCurrentScore:
					call InsertCurrentData
					mov inserted, 1
					jmp writeToFileLoop

				writeCurrentReadBufferLine:
					call WriteReadBufferLine
					jmp writeToFileLoop
			bufferEnded:
				cmp inserted, 1
				je writeBufferfile
				call InsertCurrentData


	writeBufferFile:
		mov eax,fileHandle
		call CloseFile
	
		mov edx,OFFSET filename
		call CreateOutputFile
		mov fileHandle, eax

		mov  edx,OFFSET writeBuffer
		mov  ecx,bufferSize
		call WriteToFile
			
        mov eax, fileHandle
        call CloseFile


	return:
        ret
UpdateHighscores ENDP

ConvertCurrentScoreToString PROC uses esi eax ebx
	;My 5 digit score
    movzx eax, score
    ; Initialize registers
    mov ecx, 10
    mov ebx, offset scoreStr

convert_loop:
	xor edx, edx
    div ecx
    add dl, '0'
    mov [ebx], dl
    inc ebx
    test eax, eax
    jnz convert_loop

   mov    esi, offset scoreStr
   mov    edi, offset scoreStr
   dec    edi
find_end:
   inc    edi
   mov    al, [edi]
   cmp    al, 0
   jnz    find_end 
   dec    edi

swap_loop:
   cmp    esi, edi
   jge    done_reverse

   mov    bl, [esi]
   mov    al, [edi]
   mov    [esi], al
   mov    [edi], bl

   inc    esi
   dec    edi
   jmp    swap_loop
done_reverse:
    ret
ConvertCurrentScoreToString ENDP

;edx contains offset of current score
;esi contains offset of score from file
CompareScores PROC uses edx
    push esi
    mov edx, offset scoreStr
    mov ecx, 5 ; Set the loop count to 5 for comparing 5 bytes

compare_loop:
    mov al, [esi]
    cmp byte ptr [edx], al
    jne return

    inc esi
    inc edx
    loop compare_loop ; Continue the loop for the remaining bytes

return:
    pop esi
    ret
CompareScores ENDP

;edi contains buffer that has to be writen to
;esi contains buffer read from the file
WriteReadBufferLine PROC
	moveLine:
		mov al, [esi]
		cmp al, 0
		je return
		mov [edi], al
		inc esi
		inc edi
		cmp al, 0ah
		jne moveLine

	return:	
    	ret
WriteReadBufferLine ENDP

InsertCurrentData PROC uses esi ecx eax
	
	;moving score
	mov esi, offset scoreStr
	mov ecx, 5
	
	scoreLoop:
		mov al, [esi]
		mov [edi], al
		inc esi
		inc edi
	loop ScoreLoop
		
	;bar
	mov byte ptr [edi], '|'
	inc edi
	
	mov al, level
	mov [edi], al
	add byte ptr [edi], 30h
	inc edi


	;bar
	mov byte ptr [edi], '|'
	inc edi
	
	mov esi, offset playername
	userLoop:
		mov al, [esi]
		cmp al, 0
		je return
		mov [edi], al
		inc edi
		inc esi
		jmp userLoop
	
	return:
		mov byte ptr[edi], 0ah
		inc edi

		ret 
InsertCurrentData ENDP

;;;;;Pacman Procedures;;;;;

PacmanMovement PROC
	cmp al, 1
	jne checkKeyboardInput

checkifTempHasNoCollision:
	mov bl, tempDirection

checkTempDirectionUp:
	cmp bl, 8
	jne checkTempDirectionLeft
	call CheckCollisionUp

	call IncrementTy

	cmp collision, 1
	je MoveInCurrentDirection
	mov bl, tempDirection
	mov currentPacmanDir, bl
	call SetPacmanCharacter

	jmp MoveInCurrentDirection

checkTempDirectionLeft:
	cmp bl, 4
	jne checkTempDirectionDown
	call CheckCollisionLeft

	call IncrementTx

	cmp collision, 1
	je MoveInCurrentDirection
	mov bl, tempDirection
	mov currentPacmanDir, bl
	call SetPacmanCharacter

	jmp MoveInCurrentDirection

checkTempDirectionDown:
	cmp bl, 2
	jne checkTempDirectionRight
	call CheckCollisionDown

	call DecrementTy

	cmp collision, 1
	je MoveInCurrentDirection
	mov bl, tempDirection
	mov currentPacmanDir, bl
	call SetPacmanCharacter

	jmp MoveInCurrentDirection

checkTempDirectionRight:
	cmp bl, 6
	jne checkKeyboardInput
	call CheckCollisionRight

	call DecrementTx

	cmp collision, 1
	je MoveInCurrentDirection
	mov bl, tempDirection
	mov currentPacmanDir, bl
	call SetPacmanCharacter

	jmp MoveInCurrentDirection

checkKeyboardInput:

checkW:
	cmp inputChar,"w"
	jne checkA
	mov tempDirection, 8
	call CheckCollisionUp

	cmp collision, 1
	je MoveInCurrentDirection
	mov bl, tempDirection
	jmp updatecurrentPacmanDir

checkA:
	cmp inputChar,"a"
	jne checkS
	mov tempDirection, 4
	call CheckCollisionLeft

	cmp collision, 1
	je MoveInCurrentDirection
	mov bl, tempDirection
	jmp updatecurrentPacmanDir

checkS:
	cmp inputChar,"s"
	jne checkD
	mov tempDirection, 2
	call CheckCollisionDown

	cmp collision, 1
	je MoveInCurrentDirection
	mov bl, tempDirection
	jmp updatecurrentPacmanDir

checkD:
	cmp inputChar,"d"
	jne exitMovementFunc
	mov tempDirection , 6
	call CheckCollisionRight

	cmp collision, 1
	je MoveInCurrentDirection
	mov bl, tempDirection
	jmp updatecurrentPacmanDir

updatecurrentPacmanDir:
	call SetPacmanDirection

	call CollectClearDraw

	jmp exitMovementFunc

MoveInCurrentDirection:
	call MovePlayerInCurrentDirection

exitMovementFunc:
	ret
PacmanMovement ENDP

SetPacmanDirection PROC
	mov currentPacmanDir, bl
	ret
SetPacmanDirection ENDP

MovePlayerInCurrentDirection PROC
	mov bl, currentPacmanDir

checkDirectionUp:
	cmp bl, 8
	jne checkDirectionLeft
	call CheckCollisionUp

	cmp collision, 1
	je exitFunc
	call CollectClearDraw

	jmp exitFunc

checkDirectionLeft:
	cmp bl, 4
	jne checkDirectionDown
	call CheckCollisionLeft

	cmp collision, 1
	je exitFunc
	call CollectClearDraw

	jmp exitFunc

checkDirectionDown:
	cmp bl, 2
	jne checkDirectionRight
	call CheckCollisionDown

	cmp collision, 1
	je exitFunc
	call CollectClearDraw

	jmp exitFunc

checkDirectionRight:
	cmp bl, 6
	call CheckCollisionRight

	cmp collision, 1
	je exitFunc
	call CollectClearDraw

	jmp exitFunc

exitFunc:
	ret
MovePlayerInCurrentDirection ENDP

CollectClearDraw PROC
	call EatableAtCurrent
	cmp eatableCollected, 0
	jne pelletScore
	mov eax, SND_FILENAME  
	or eax, SND_NOSTOP  
	or eax, SND_ASYNC 
	jmp dontUpdateScore

pelletScore:
	cmp eatableCollected, 1
	jne fruitScore
	inc pelletCounter
	mov bx, 10
	mov eax, SND_FILENAME  
	or eax, SND_NOSTOP  
	or eax, SND_ASYNC 
	;invoke PlaySound, offset chompSound, 0, eax
	jmp skipToUpdateScore

fruitScore:
	cmp eatableCollected, 2
	jne powerPelletScore
	invoke PlaySound, 0, 0, 0
	mov eax, SND_FILENAME  
	or eax, SND_NOSTOP  
	or eax, SND_ASYNC 
	;invoke PlaySound, offset fruitSound, 0, eax
	call UpdateCurrentFruit
	mov al, currentFruit

checkCherry:
	cmp al, cherry
	jne checkOrange
	mov bx, 500
	jmp skipToUpdateScore

checkOrange:
	cmp al, orange
	jne checkApple
	mov bx, 2000
	jmp skipToUpdateScore

checkApple:
	cmp al, apple
	jne skipToUpdateScore
	mov bx, 5000
	jmp skipToUpdateScore

powerPelletScore:
	cmp eatableCollected, 3
	jne dontUpdateScore
	inc pelletCounter
	mov bx, 50
	invoke PlaySound, 0, 0, 0
	mov eax, SND_FILENAME
	or eax, SND_NOSTOP
	or eax, SND_ASYNC
	;invoke PlaySound, offset powerpelletSound, 0, eax

skipToUpdateScore:
	call UpdateScore

dontUpdateScore:
	call ClearPacmanCurrent

	call UpdatePacmanPosition

	call DrawPacman

	ret
CollectClearDraw ENDP

UpdateScore PROC
	add score, bx
	ret
UpdateScore ENDP

ClearPacmanCurrent PROC
	mov eax, black + (black*16)
	call SetTextColor

	mov dl,xPos
	mov dh,yPos
	call Gotoxy

	mov al," "
	call WriteChar

	ret
ClearPacmanCurrent ENDP

UpdatePacmanPosition PROC
	mov dl, tempxPos
	mov dh, tempyPos

checkPortalAt8:
	cmp dh, 8
	jne checkPortalAt17
	jmp checkX

checkPortalAt17:
	cmp dh, 17
	jne NoTeleport

checkX:

IfRightSide:
	cmp dl, 102
	jne IfLeftSide
	mov dl, 1
	jmp NoTeleport

IfLeftSide:
	cmp dl, 0
	jne NoTeleport
	mov dl, 101

NoTeleport:
	mov xPos, dl
	mov yPos, dh
	ret
UpdatePacmanPosition ENDP

DrawPacman PROC
	mov eax,yellow
	call SetTextColor

	mov dl,xPos
	mov dh,yPos
	call Gotoxy

	call SetPacmanCharacter
	call WriteChar

	ret
DrawPacman ENDP

SetPacmanCharacter PROC
	mov bl, currentPacmanDir
	mov al, pacmanCharacter

checkUp:
	cmp bl, 8
	jne checkLeft
	mov al, 118
	jmp updated

checkLeft:
	cmp bl, 4
	jne checkDown
	mov al, 62
	jmp updated

checkDown:
	cmp bl, 2
	jne checkRight
	mov al, 94
	jmp updated

checkRight:
	cmp bl, 6
	jne fin
	mov al, 60
	jmp updated

updated:
	mov pacmanCharacter, al

fin:
	ret
SetPacmanCharacter ENDP

EatableAtCurrent PROC
	xor esi,esi
	xor edx, edx
	mov dl, xPos
	mov dh, yPos
	mov xCharacterAt, dl
	mov yCharacterAt, dh
	call CheckCharacterAtIndex

	mov al, characterAtXY
	mov cl, " "
	mov [esi], cl

checkPellet:
	cmp al, pellet
	jne checkFruit

collectPellet:
	mov cl, 1
	jmp updateEatableCollected

checkFruit:
	cmp al, fruit
	jne checkPowerPellet

collectFruit:
	mov cl, 2
	mov fruitCollected, 1
	jmp updateEatableCollected

checkPowerPellet:
	cmp al, powerPellet
	jne noEatable

collectPowerPellet:
	mov cl, 3
	jmp updateEatableCollected

noEatable:
	mov cl, 0
	jmp updateEatableCollected

updateEatableCollected:
	mov eatableCollected, cl
	ret
EatableAtCurrent ENDP

CheckCollisionUp PROC
	call DecrementTy

	call CheckWallAtTemp

	ret
CheckCollisionUp ENDP

CheckCollisionDown PROC
	call IncrementTy

	call CheckWallAtTemp

	ret
CheckCollisionDown ENDP

CheckCollisionLeft PROC
	call DecrementTx

	call CheckWallAtTemp

	ret
CheckCollisionLeft ENDP

CheckCollisionRight PROC
	call IncrementTx

	call CheckWallAtTemp

	ret
CheckCollisionRight ENDP

IncrementTy PROC
	mov dl, xPos
	mov dh, yPos
	inc dh
	mov tempxPos, dl
	mov tempyPos, dh
	ret
IncrementTy ENDP

DecrementTy PROC
	mov dl, xPos
	mov dh, yPos
	dec dh
	mov tempxPos, dl
	mov tempyPos, dh
	ret
DecrementTy ENDP

DecrementTx PROC
	mov dl, xPos
	mov dh, yPos
	dec dl
	mov tempxPos, dl
	mov tempyPos, dh
	ret
DecrementTx ENDP

IncrementTx PROC
	mov dl, xPos
	mov dh, yPos
	inc dl
	mov tempxPos, dl
	mov tempyPos, dh
	ret
IncrementTx ENDP

CheckWallAtTemp PROC
	xor edx, edx
	mov dl, tempxPos
	mov dh, tempyPos
	mov xCharacterAt, dl
	mov yCharacterAt, dh
	call CheckCharacterAtIndex

	mov al, characterAtXY
	cmp al, wall
	jne checkPrisonBar

theresCollision:
	mov cl, 1
	jmp updateCollision

checkPrisonBar:
	cmp al, bar
	jne noCollision
	jmp theresCollision

noCollision:
	mov cl, 0
	jmp updateCollision

updateCollision:
	mov collision, cl
	ret
CheckWallAtTemp ENDP


;;;;;Ghost Procedures;;;;;

;;;;;Screen and Print Procedures;;;;;



CreditScreen PROC
	call clrscr
	mov dl, 0
	mov dh, 30
	mov edx, offset credits
	call WriteString
	mov eax, 1000
	call delay
	ret
CreditScreen ENDP

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
	
	mov edx, OFFSET pressPToStart
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

SetupGameScreen PROC
	call PrintMaze

	mov eax, white
	call SetTextColor

	mov dl, 9
	mov dh, 30
	call gotoxy

	mov edx, offset levelText
	call WriteString

	mov dl, 87
	mov dh, 30
	call gotoxy

	mov edx, offset scoreText
	call WriteString

	mov dl, 56
	mov dh, 22
	mov xPos, dl
	mov yPos, dh
	call DrawPacman

	mov dl, 48
	mov dh, 30
	call gotoxy
	mov edx, OFFSET playername
	call WriteString	

	call ReadyTextAnimation
	ret
SetupGameScreen ENDP

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

PauseScreen PROC

keepPaused:
	mov dl, 90
	mov dh, 32
	call gotoxy
	mov eax, red
	call SetTextColor
	mov edx, offset pauseText
	call WriteString
	mov eax, 500
	call delay
	mov dl, 90
	mov dh, 32
	call gotoxy
	mov edx, offset blinkText
	call WriteString
	mov eax, 500
	call delay

	call ReadKey
	cmp al, 1
	je keepPaused
	cmp al, "p"
	jne keepPaused
	mov dl, 90
	mov dh, 32
	call gotoxy
	mov edx, offset blinkText
	call WriteString
	ret

PauseScreen ENDP

ReadyTextAnimation PROC
	mov ecx, 5
	mov esi, OFFSET readyText
	mov dl, 49
	mov dh, 15
	call gotoxy

writeReady:
	mov eax, yellow
	call SetTextColor

	mov al, [esi]
	call WriteChar

	inc esi
	Loop writeReady
	mov eax, 1000
	call delay

	mov ecx, 5
	mov dl, 49
	mov dh, 15
	call gotoxy

removeReady:
	mov eax, yellow
	call SetTextColor

	mov al, " "
	call writeChar

	mov eax, 500
	call delay

	Loop removeReady

	ret
ReadyTextAnimation ENDP

DisplayLevelScoreLives PROC
	mov eax, yellow
	call SetTextColor
	mov dl, 15
	mov dh, 30
	call gotoxy

	mov ax, 0
	mov al, level
	call WriteDec

	mov dl, 94
	mov dh, 30
	call gotoxy

	mov ax, score
	call WriteDec

	xor ecx, ecx
	mov cl, lives
	mov bl, 48
	mov bh, 31
	mov eax, black + (yellow*16)
	call SetTextColor
	toPrintLives:
	mov dl, bl
	mov dh, bh
	call gotoxy
	mov al, 128
	call WriteChar
	inc bl
	inc bl
	LOOP toPrintLives
	ret
DisplayLevelScoreLives ENDP

GameOverScreen PROC
	mov eax, black + black*16
	call setTextColor
	call clrscr
	mov dl, 0
	mov dh, 6
	call gotoxy
	mov esi, offset gameOver
	toGameOverMessage:
		mov eax, white
		call settextcolor
		xor eax, eax
		mov al, [esi]
		cmp al, 219
		je writeTheChar

		push ax
		mov eax, gray
		call settextcolor
		pop ax

		writeTheChar:
		call WriteChar
		inc esi
		cmp al, 0
		jnz toGameOverMessage
	

	mov eax, white
	call settextcolor
	mov dl, 42
	mov dh, 19
	call gotoxy
	mov edx, OFFSET yourScoreText
	call WriteString
	mov ax, score
	call WriteDec

	mov dl, 0
	mov dh, 22
	call gotoxy
	
	mov edx, OFFSET pressTo
	call WriteString

	invalidInput:
		call ReadChar
		cmp al, "p"
		je startNewGame
		cmp al, "h"
		je highscorescreen
		cmp al, "x"
		je exitGame
		jmp invalidInput
	startNewGame:
		call Game
	highscorescreen:
		call DisplayHighscores
	exitGame:
		exit
	ret
GameOverScreen ENDP

DisplayHighscores PROC
	call clrscr
	mov dl, 0
	mov dh, 0
	call gotoxy
	mov edx, OFFSET viewHighscores
	call WriteString

	mov edx,OFFSET filename
	call OpenInputFile
	mov fileHandle,eax

	mov  eax,fileHandle
    mov  edx,OFFSET readBuffer
    mov  ecx, 150 ; buffer size
    call ReadFromFile

	mov ecx, 200
	mov edi, offset readBuffer
	mov dl, 42
	mov dh, 9
	call gotoxy

	mov eax, yellow
	call SetTextColor

toDisplayHighscores:
	mov al , [edi]
	cmp al, carriageReturn
	je ignoreCharacter
	cmp al, lineFeed
	jne writeCharacter
	mov dl, 42
	add dh, 2
	call gotoxy
ignoreCharacter:
	mov eax, white
	call SetTextColor
	jmp continueLooping
writeCharacter:
	call WriteChar
continueLooping:
	inc edi
	loop toDisplayHighscores

	mov eax, 5000
	call delay
	
	mov dl, 0
	mov dh, 30
	call gotoxy
	
	mov edx, OFFSET pressPToStart
	call WriteString

	keepreading:
	call ReadChar
	cmp al, "x"
	je exitWindow
	cmp al, "p"
	jne keepreading
	call Game

	exitWindow:
	exit
	ret
DisplayHighscores ENDP

END main
