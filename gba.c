#include "gba.h"

//arena dimensions
extern int arenaWidth, arenaHeight; // dimensions
extern int arenaX, arenaY; // location

extern int topBound, lBound = 8;
extern int botBound = SCREENHEIGHT - 8;
extern int rBound = SCREENWIDTH - 8;  // player movement bounds

// Pointer to the start of video memory
volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

// Draws a rectangle in mode 3
void drawRect(int x, int y, int width, int height, unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            setPixel(x + j, y + i, color);
        }
    }
}

// Fills the screen in mode 3
void fillScreen(unsigned short color) {
    for (int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}

void drawText() {
    drawString(15, 15, "o o o", WHITE);
    //drawString(SCREENWIDTH / 4, 148, "press start", LIGHTBLUE);
}

void drawStart() {
    // drawRect(48, 6, 100, 50, DARKGRAY);
    // drawRect(24, 148, 100, 50, DARKGRAY);
    drawRect(8, 8, SCREENWIDTH - 16, SCREENHEIGHT - 16, PBLUE);
    drawRect(11, 11, SCREENWIDTH - 22, SCREENHEIGHT - 22, LIGHTBLUE);
}

void newVertBound(int x, int y, int length) {
    drawRect(x, y, 3, length, PBLUE); // draws the line left by player in dark blue
}

void newHorzBound(int x, int y, int width) {
    drawRect(x, y, 3, width, PBLUE);

}
void drawUp(int x, int y, int height ) {
    drawRect(x, y, 3, height, PBLUE);
}

void drawRight(int x, int y, int length) {
    drawRect(x, y, length, 3, PBLUE);
}

void drawLeft(int x, int y, int length) {
    drawRect(x + 3, y + 3, length, 3, PBLUE);
}

void shrinkWidth(int startX, int startY, int pX, int pY, int aHeight) {
    drawRect(startX, 0, pX, pY, DARKGRAY);
    drawRect(pX, pY, 3, aHeight, PBLUE);
}

void shrinkHeight(int startX, int startY, int pX, int pY, int aWidth) {
    drawRect(0, startY, pX, pY, DARKGRAY);
    drawRect(startX, startY, aWidth, 3, PBLUE);
}

// Checks for collision between two rectangles
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2) {
    return y1 < y2 + height2 && y1 + height1 > y2 && x1 < x2 + width2 && x1 + width1 > x2;
}

// Waits until drawing pixel 0 of line 160
void waitForVBlank() {
    while (REG_VCOUNT >= 160);
    while (REG_VCOUNT < 160);
}