#include "gba.h"
#include "font.h"
#include "print.h"

//prototypes and stuff
int skipFrames;
void drawBall();
void drawPlayer();
void initialize();
void updateBall();
void update();

//buttons
unsigned short buttons;
unsigned short oldButtons;

//bouncing ball controls
int time;
int ballSize, pX, pY, pVx, pVy;
int prevX, prevY;

//player controls
int playerSize, playerX, playerY, prevPlayerX, prevPlayerY;

//arena stuff
int arenaWidth, arenaHeight; //dimensions
int arenaX, arenaY = 11; //location
int padding; //player movement zone
u16 arenaColor = LIGHTBLUE; 
u16 paddingColor = PBLUE;

//boundaries
int topBound, botBound, lBound, rBound = 8;

int main() {

    mgba_open();
	mgba_printf("debugging initialized");

    initialize();

    //if (BUTTON_PRESSED(BUTTON_START)) {
       
        drawStart();

        while (1) {
            
            if (time % skipFrames == 0) {
                updateBall();
            }
            update(); 

            oldButtons = buttons;
            buttons = REG_BUTTONS;

            waitForVBlank();
            drawBall();
            drawPlayer();
            time++;
        }
        return 0;
    //}
}

void initialize() {
    REG_DISPCTL = MODE(3) | BG2_ENABLE;

    skipFrames = 2;
    time = 0;
    ballSize = 3;
    pX = SCREENWIDTH / 2;
    pY = SCREENHEIGHT / 2;
    pVx = 1;
    pVy = 1;

    padding = 3;
    arenaHeight = SCREENHEIGHT - 22;
    arenaWidth = SCREENWIDTH - 22;

    playerSize = 3;
    playerX = 8;
    playerY = 8;
    prevPlayerX = playerX;
    prevPlayerY = playerY;

    pX = SCREENWIDTH / 2;
    pY = SCREENHEIGHT / 2;
    prevX = pX;
    prevY = pY;
    pVx = 1;
    pVy = 1;

    //set up background
    fillScreen(DARKGRAY);

}

void updateBall() {

    prevX = pX;
    prevY = pY;
    pX += pVx;
    pY += pVy;

    if (pX <= (arenaX + padding)) {
        pX =  padding + (padding - pX) + 1;
        pVx = -pVx;
    }
    if (pY <= (arenaY + padding)) {
        pY = padding + (padding - pY) + 1;
        pVy = -pVy;
    }
    if (pX + ballSize >= (arenaX + arenaWidth)) {
        pX -= pX + ballSize - (arenaX + arenaWidth);
        pVx = -pVx;
    }
    if (pY +  ballSize >= (arenaY + arenaHeight)) {
        pY -= pY + ballSize - (arenaY + arenaHeight);
        pVy = -pVy;
    }
}

void update() {    

//update player
    int playerSpeed = 1;
    if ((BUTTON_HELD(BUTTON_RIGHT)) || BUTTON_PRESSED(BUTTON_RIGHT)) {
		playerX = prevPlayerX + playerSpeed;
	}
	if ((BUTTON_HELD(BUTTON_LEFT)) || BUTTON_PRESSED(BUTTON_LEFT)) {
		playerX = prevPlayerX - playerSpeed;
	}
	if ((BUTTON_HELD(BUTTON_UP)) || BUTTON_PRESSED(BUTTON_UP)) {
		playerY = prevPlayerY - playerSpeed;
	}
	if ((BUTTON_HELD(BUTTON_DOWN)) || BUTTON_PRESSED(BUTTON_DOWN)) {
		playerY = prevPlayerY + playerSpeed;
	}

    // boundary checks
	if (playerX < lBound) { // left
		playerX = lBound;
	}
	if (playerX + playerSize > SCREENWIDTH - rBound) { // right
		playerX = SCREENWIDTH - (playerSize + rBound);
	}
	if (playerY < topBound) { // top
		playerY = topBound;
	}
	if (playerY + playerSize > SCREENHEIGHT - botBound) { // bottom
		playerY = SCREENHEIGHT - (playerSize + botBound);
	}
}

void drawBall() {
    drawRect(prevX, prevY, ballSize, ballSize, LIGHTBLUE);
    drawRect(pX, pY, ballSize, ballSize, RED);
}

void drawPlayer() {
    drawRect(prevPlayerX, prevPlayerY, playerSize, playerSize, PBLUE);
    drawRect(playerX, playerY, playerSize, playerSize, WHITE);

    prevPlayerX = playerX;
    prevPlayerY = playerY;
}


