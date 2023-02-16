#include "gba.h"
#include "font.h"
#include "print.h"

//prototypes and stuff
int skipFrames;
void drawBall();
void drawPlayer();
void initialize();
void updateBall();
void updatePlayer();
void shrinkWidth(int startX, int width, int height, int arenaHeight);
void shrinkHeight(int startY, int width, int height, int arenaWidth);

//buttons
unsigned short buttons;
unsigned short oldButtons;

//life counter
int lives = 3;

//bouncing ball controls
int time;
int bSize, bX, bY, bVx, bVy;
int oldBX, oldBY;

//player controls
int pSize, pX, pY, oldPX, oldPY, pVx, pVy, startX, startY;
void drawLeft();
void drawRight();
void drawUp();
void drawDown();

//arena stuff
int arenaWidth, arenaHeight; //dimensions
int arenaX, arenaY; //location
int padding; //player movement zone
u16 arenaColor = LIGHTBLUE; 
u16 paddingColor = PBLUE;

//boundaries
int topBound, botBound, lBound, rBound;


int main() {

    mgba_open();
	mgba_printf("debugging initialized");

    initialize();
    drawStart();

    while (1) {
        
        if (time % skipFrames == 0) {
            updateBall();
        }
        updatePlayer();

        oldButtons = buttons;
        buttons = REG_BUTTONS;

        waitForVBlank();
        drawBall();
        drawPlayer();
        drawText();

        time++;
    }
    return 0;
}

void initialize() {
    REG_DISPCTL = MODE(3) | BG2_ENABLE;

    skipFrames = 2;
    time = 0;
    bSize = 3;
    bX = SCREENWIDTH / 2;
    bY = SCREENHEIGHT / 2;
    bVx = 1;
    bVy = 1;

    padding = 3;
    arenaHeight = SCREENHEIGHT - 22;
    arenaWidth = SCREENWIDTH - 22;
    arenaX = 11;
    arenaY = 11;

    pSize = 3;
    pX = 8;
    pY = 8;
    oldPX = pX;
    oldPY = pY;
    pVx = 0;
    pVy = 1;

    bX = SCREENWIDTH / 2;
    bY = SCREENHEIGHT / 2;
    oldBX = bX;
    oldBY = bY;
    bVx = 1;
    bVy = 1;

    //set up background
    fillScreen(DARKGRAY);
}

void updateBall() {

    oldBX = bX;
    oldBY = bY;
    bX += bVx;
    bY += bVy;

    if (bX < arenaX) {
        bX =  (arenaX - bSize) + bX;
        bVx = -bVx;
    }
    if (bY < (arenaY)) {
        bY = (arenaY - bSize) + bY;
        bVy = -bVy;
    }
    if (bX + bSize >= (arenaX + arenaWidth)) {
        bX -= bX + bSize - (arenaX + arenaWidth);
        bVx = -bVx;
    }
    if (bY +  bSize >= (arenaY + arenaHeight)) {
        bY -= bY + bSize - (arenaY + arenaHeight);
        bVy = -bVy;
    }
}

void updatePlayer() {
    
    oldPX = pX;
    oldPY = pY;

    if ((pX == arenaX - padding) && (pY < arenaY + arenaHeight)) { // upper left corner to lower left corner
        if (!BUTTON_PRESSED(BUTTON_A)) {
            pVx = 0; // 0 velocity in x dir 
            pVy = 1; // 1 velocity in y dir (moving down)
            pY += pVy;
        } else if (BUTTON_PRESSED(BUTTON_A)){
            pX++;
        }
    }

    if (pX >= arenaX - padding + 1) {
        startX = pX;
        startY = pY;
        if (!(collision(bX, bY, bSize, bSize, pX, pY, pSize, pSize))) {
            pX++;
            pVy = 0;
            if (collision(pX, pY, pSize, pSize, arenaX + arenaWidth, pY, 1, pSize)) {
                //drawLeft(startX, pY, arenaWidth);
                mgba_printf("hit the other side");
                if (bY > pY) {
                    shrinkHeight(startX, startY, pX + pSize, SCREENHEIGHT - pY, arenaWidth);
                    botBound = pY;
                    arenaHeight -= pY;
                } else {
                    shrinkHeight(startX, 0, pX + pSize, arenaHeight - pY, arenaWidth);
                    topBound = topBound - startY;
                    arenaHeight -= pY;
                }
            }
        } else {
            mgba_printf("hit the box");
            pX = startX - 1;
            lives--;
        }
}

    if ((pY == arenaY + arenaHeight) && (pX != arenaX + arenaWidth)) { // lower left to lower right
        pVx = 1; // 1 vel in x dir (moving right)
        pVy = 0; // 0 vel in Y dir 
        pX += pVx;
    }
    if ((pX >= arenaX + arenaWidth) && (pY < arenaY - padding)) { // lower right corner to upper right corner
        pVx = 0; // not moving along x
        pVy = 1; // -1 vel in y dir (moving up)
        pY -= pVy;
    }
    if ((pY == arenaY - padding -1) && (pX > arenaX - padding)) { // upper right corner to upper left
         pVx = 1; // -1 vel in x dir (moving left)
         pVy = 0; // not moving along y 
         pX -= pVx;
    }

    // boundary checks
	if (pX < lBound) { // left 
		pX = lBound;
	}
	if (pX + pSize > rBound) { // right outside
		pX = (rBound - pSize);
        pY--;
	 }
	if (pY < ((arenaY - padding) + topBound)) { // top outside
		pY = (arenaY - padding) + topBound;
	}
	if (pY + pSize > botBound) { // bottom outside
		pY = (botBound - pSize);
	}



    switch(lives) {
        case 3:
            break;
        case 2:
            drawString(15, 15, "    o", LIGHTBLUE);
            break;
        case 1:
            drawString(15, 15, "  o o", LIGHTBLUE);
            break;
        case 0:        
            drawString(15, 15, "o o o", LIGHTBLUE);
            drawRect(20, 20, 100, 40, PBLUE);
            drawString(30, 30, "you lose :( restart application to play again", WHITE);
            break;
    }
}


void drawBall() {
    drawRect(oldBX, oldBY, bSize, bSize, LIGHTBLUE);
    drawRect(bX, bY, bSize, bSize, RED);
}

void drawPlayer() {

    drawRect(oldPX, oldPY, pSize, pSize, PBLUE);
    drawRect(pX, pY, pSize, pSize, WHITE);

    oldPX = pX;
    oldPY = pY;
}




