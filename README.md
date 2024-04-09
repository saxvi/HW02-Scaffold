## hw2 for cs 2261 at gatech ##

#JEZZBALL RULES

The goal of the game is to capture the enemy ball (red) in a space no larger than 25 by 25px. The player (white), will move within the confines of the arena boundary (dark blue), and can draw perpendicular lines that will make the boundary smaller at any point by pressing A.

For example, if the player is in the middle of the left side of the arena (not at a corner), and presses A, the player will move to the right at a constant speed until either the line connects to the other side or the enemy ball collides with the player or the in-progress line.

If a collision occurs, the player will lose a life and be sent back to their original position on the left boundary to continue moving, and the enemy ball will continue in its trajectory. 

If the line is completed, then the arena will shrink to the size of where the line was drawn. Once the player has contained the ball in an arena the necessary size (25x25px), the game will end and the player wins.

However, if the player loses all of their lives, they will lose, and the arena will be reset to its original size.

Good luck!

