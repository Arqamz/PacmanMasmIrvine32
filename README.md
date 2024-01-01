# Pacman Assembly Game
This repository hosts an Irvine 32 project written in MASM x86 assembly language (8086 architecture). The focus of the project is a terminal-based implementation of the classic Pac-Man game. Written for a console environment, the code delivers a functional rendition of Pac-Man

<center> <h2> .DATA </h2> </center>

### Description

The variables are all organized into various sections within the `.data` segment, each serving a specific purpose in the game.

* **Printing:** Stores ASCII art for splash screen, game over screen, and other game interface text.

* **Constants:** Defines constants for various game elements such as walls, pellets, power pellets, etc.

* **Game:** Includes variables related to game state, player information, and flags.

* **Pacman:** Defines constants and variables specific to the Pacman character.

* **Ghost:** Contains constants related to ghost directions and other Ghost-related definitions.

* **Time:** Holds variables and constants related to time tracking in the game.

* **Sounds:** Stores sound filenames and related variables for the game.

* **File Handling:** Includes variables and constants related to file handling operations.

<center> <h2> .CODE </h2> </center>

### Description

- **MAIN:**
  - The main function serves as the central entry point for the Pac-Man assembly game. It orchestrates the game flow by sequentially calling various procedures. The sequence includes displaying the credit screen, followed by the splash screen, instruction screen, enter name screen, and finally, initiating the game.
- **SYSTEM:**
  - The SYSTEM section comprises procedures that manage time tracking and other system-level functionalities.
- **GAME:**
  - The GAME section houses procedures responsible for game setup, initialization, and the core game loop.
- **PACMAN:**
  - The PACMAN section contains procedures and helper functions dedicated to managing Pac-Man's movement, scoring, and interactions.
- **GHOST:**
  - The GHOST section orchestrates the movement and behavior of Blinky, Pinky, Inky, and Clyde, the ghosts in the game.
- **PRINTING AND SCREEN:**
  - The PRINTING AND SCREEN section encompasses procedures for displaying various screens, printing characters, and managing visual elements.
- **FILE HANDLING:**
  - The FILE HANDLING section includes procedures that interact with files, updating high scores and converting scores to string representations.

#### <u> SYSTEM PROCEDURES </u>

**UTime Procedure:**
Keeps track of time in the Pac-Man assembly game. It increments the variable powerPelletTime every second, ensuring that the game responds to the passage of time.

#### <u> GAME PROCEDURES </u>

**GetAllTimeHighscore Procedure:**
Retrieves the all-time high score from a file in the Pac-Man assembly game. It opens the file, reads the high score string, converts it to a decimal, and stores the result in allTimeHighscore.

**Game Procedure:**
The main procedure of the Pac-Man assembly game. It sets up the initial game state, retrieves the all-time high score, and enters the game loop (GameLoop).

**ResetMap Procedure:**
Resets the game map by copying the contents of a temp (new) map to the actual game map. This procedure is called during the initialization of the game and after each player death.

**GameLoop Procedure:**
The core game loop responsible for updating the game state, handling user input, managing various game elements such as ghosts and fruits, and progressing through levels.

**LevelChange Procedure:**
Checks the pellet counter, and if it reaches 921 (total pellets on screen), increments the level, resets the pellet counter, and sets a flag indicating a level change.

**IfOneUp Procedure:**
Monitors the player's score, and if it reaches 12,500 points, awards an extra life to the player.

**GenerateFruit Procedure:**
Manages the generation of fruits in the game based on certain conditions.

**UpdateCurrentFruit Procedure:**
Determines the current fruit based on the player's score.

**CheckCharacterAtIndex Procedure:**
Retrieves the character at a specified position within the game map.

**CheckPacmanGhostCollision Procedure:**
Checks for collisions between Pac-Man and each ghost.

#### <u> PACMAN PROCEDURES </u>

**PacmanMovement Procedure:**
Manages Pac-Man's movement by intelligently handling player input.

**MovePacmanInCurrentDirection Procedure:**
Orchestrates Pac-Man's movement based on its current direction.

**CollectClearDraw Procedure:**
Manages the collection of pellets, fruits, and power pellets by Pac-Man.

**UpdateScore Procedure:**
Adds the value in bx to the player's score.

**ClearPacmanCurrent Procedure:**
Clears Pac-Man's current position on the screen.

**UpdatePacmanPosition Procedure:**
Updates Pac-Man's position based on its temporary position (tempxPos and tempyPos).

**DrawPacman Procedure:**
Draws Pac-Man at its current position on the screen.

**SetPacmanCharacter Procedure:**
Assigns the appropriate ASCII character to represent Pac-Man based on its current movement direction (currentPacmanDir).

**EatableAtCurrent Procedure:**
Checks for an edible item at Pac-Man's current position.

**IncrementTy Procedure:**
Increments the y-coordinate of the temporary position.

**DecrementTy Procedure:**
Decrements the y-coordinate of the temporary position.

**DecrementTx Procedure:**
Decrements the x-coordinate of the temporary position.

**IncrementTx Procedure:**
Increments the x-coordinate of the temporary position.

**CheckWallAtTemp Procedure:**
Checks for collisions at the temporary position, updating the collision flag accordingly.

#### <u> GHOST PROCEDURES </u>

**BlinkyPinkyInkyClyde Procedure:**
Manages the movement of Blinky, Pinky, Inky, and Clyde, the ghosts in the game.

**GhostMovement Procedure:**
Handles the movement logic for the ghosts.

**GenerateGhostDirectionPossibilities Procedure:**
Determines the valid movement directions for a ghost based on the game's constraints.

**ClearGhostCurrent Procedure:**
Clears the previous position of a ghost on the screen.

**UpdateGhostPosition Procedure:**
Manages the ghost's movement based on its direction.

**DrawGhost Procedure:**
Renders the ghost on the screen.

**CheckGhostCollisionUp Procedure:**
Checks for collisions between a ghost and the wall when moving upwards.

**CheckGhostCollisionDown Procedure:**
Checks for collisions between a ghost and the wall when moving downwards.

**CheckGhostCollisionLeft Procedure:**
Checks for collisions between a ghost and the wall when moving leftwards.

**CheckGhostCollisionRight Procedure:**
Checks for collisions between a ghost and the wall when moving rightwards.

**IncrementGhostTy Procedure:**
Increments the temporary Y-coordinate of the ghost.

**DecrementGhostTy Procedure:**
Decrements the temporary Y-coordinate of the ghost.

**DecrementGhostTx Procedure:**
Decrements the temporary X-coordinate of the ghost.

**IncrementGhostTx Procedure:**
Increments the temporary X-coordinate of the ghost.

**CheckGhostWallAtTemp Procedure:**
Examines the character at the temporary ghost's position and checks for collisions with walls or barriers.

#### <u> PRINTING AND SCREEN PROCEDURES </u>

**CreditScreen Procedure:**
Shows credits.

**SplashScreen Procedure:**
Displays the game start message. Prompts the user to press "p" to start the game and waits till it's pressed.

**InstructionScreen Procedure:**
Shows game instructions for five seconds.

**EnterName Procedure:**
Asks the player to enter their name.

**SetupGameScreen Procedure:**
Sets up the initial game screen, including maze, level info, player name, and ready text.

**PrintMaze Procedure:**
Prints the maze layout.

**PrintCharacter Procedure:**
Prints characters based on their types.

**PauseScreen Procedure:**
Displays a pause screen and waits for player input to continue.

**DisplayBestScore Procedure:**
Compares the current score with the all-time high score and displays the higher of the two.

**ReadyTextAnimation Procedure:**
Displays a "Ready" animation before the game starts.

**DisplayLevelScoreLives Procedure:**
Displays the current level, score, and remaining lives at the bottom of the screen.

**GameOverScreen Procedure:**
Displays the game over screen, including the player's score and options to start a new game, view high scores, or exit.

**DisplayHighscores Procedure:**
Displays the high scores from a file, allowing the player to exit, start a new game, or view high scores.

#### <u> FILE HANDLING PROCEDURES </u>

**UpdateHighscores Procedure:**
Updates the high scores file by comparing the current score with the existing scores and inserting it in the correct position.

**ConvertCurrentScoreToString Procedure:**
Converts the current score into a string representation.

**CompareScores Procedure:**
Compares the current score with a score read from the file to determine their relative order.

**WriteReadBufferLine Procedure:**
Writes a line from the read buffer to the write buffer.

**InsertCurrentData Procedure:**
Inserts the current player's data (score, level, and player name) into the write buffer.
