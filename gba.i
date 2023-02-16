# 1 "gba.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gba.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short *videoBuffer;
# 36 "gba.h"
void waitForVBlank();


int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 64 "gba.h"
void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 81 "gba.h"
extern unsigned short oldButtons;
# 2 "gba.c" 2


extern int arenaWidth, arenaHeight;
extern int arenaX, arenaY;

extern int topBound, lBound = 8;
extern int botBound = 160 - 8;
extern int rBound = 240 - 8;


volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;


void drawRect(int x, int y, int width, int height, unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            (videoBuffer[((y + i) * (240) + (x + j))] = color);
        }
    }
}


void fillScreen(unsigned short color) {
    for (int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}

void drawText() {
    drawString(15, 15, "o o o", ((31&31) | (31&31) << 5 | (31&31) << 10));

}

void drawStart() {


    drawRect(8, 8, 240 - 16, 160 - 16, ((14&31) | (14&31) << 5 | (21&31) << 10));
    drawRect(11, 11, 240 - 22, 160 - 22, ((24&31) | (24&31) << 5 | (31&31) << 10));
}

void newVertBound(int x, int y, int length) {
    drawRect(x, y, 3, length, ((14&31) | (14&31) << 5 | (21&31) << 10));
}

void newHorzBound(int x, int y, int width) {
    drawRect(x, y, 3, width, ((14&31) | (14&31) << 5 | (21&31) << 10));

}
void drawUp(int x, int y, int height ) {
    drawRect(x, y, 3, height, ((14&31) | (14&31) << 5 | (21&31) << 10));
}

void drawRight(int x, int y, int length) {
    drawRect(x, y, length, 3, ((14&31) | (14&31) << 5 | (21&31) << 10));
}

void drawLeft(int x, int y, int length) {
    drawRect(x + 3, y + 3, length, 3, ((14&31) | (14&31) << 5 | (21&31) << 10));
}

void shrinkWidth(int startX, int startY, int pX, int pY, int aHeight) {
    drawRect(startX, 0, pX, pY, ((5&31) | (5&31) << 5 | (5&31) << 10));
    drawRect(pX, pY, 3, aHeight, ((14&31) | (14&31) << 5 | (21&31) << 10));
}

void shrinkHeight(int startX, int startY, int pX, int pY, int aWidth) {
    drawRect(0, startY, pX, pY, ((5&31) | (5&31) << 5 | (5&31) << 10));
    drawRect(startX, startY, aWidth, 3, ((14&31) | (14&31) << 5 | (21&31) << 10));
}


int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2) {
    return y1 < y2 + height2 && y1 + height1 > y2 && x1 < x2 + width2 && x1 + width1 > x2;
}


void waitForVBlank() {
    while ((*(volatile unsigned short *)0x4000006) >= 160);
    while ((*(volatile unsigned short *)0x4000006) < 160);
}
