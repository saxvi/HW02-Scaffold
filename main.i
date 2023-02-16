# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "font.h" 1

extern const unsigned char fontdata_6x8[12288];
# 3 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 4 "main.c" 2


int skipFrames;
void drawBall();
void drawPlayer();
void initialize();
void updateBall();
void updatePlayer();
void shrinkWidth(int startX, int width, int height, int arenaHeight);
void shrinkHeight(int startY, int width, int height, int arenaWidth);


unsigned short buttons;
unsigned short oldButtons;


int lives = 3;


int time;
int bSize, bX, bY, bVx, bVy;
int oldBX, oldBY;


int pSize, pX, pY, oldPX, oldPY, pVx, pVy, startX, startY;
void drawLeft();
void drawRight();
void drawUp();
void drawDown();


int arenaWidth, arenaHeight;
int arenaX, arenaY;
int padding;
u16 arenaColor = ((24&31) | (24&31) << 5 | (31&31) << 10);
u16 paddingColor = ((14&31) | (14&31) << 5 | (21&31) << 10);


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
        buttons = (*(volatile unsigned short *)0x04000130);

        waitForVBlank();
        drawBall();
        drawPlayer();
        drawText();

        time++;
    }
    return 0;
}

void initialize() {
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | (1<<10);

    skipFrames = 2;
    time = 0;
    bSize = 3;
    bX = 240 / 2;
    bY = 160 / 2;
    bVx = 1;
    bVy = 1;

    padding = 3;
    arenaHeight = 160 - 22;
    arenaWidth = 240 - 22;
    arenaX = 11;
    arenaY = 11;

    pSize = 3;
    pX = 8;
    pY = 8;
    oldPX = pX;
    oldPY = pY;
    pVx = 0;
    pVy = 1;

    bX = 240 / 2;
    bY = 160 / 2;
    oldBX = bX;
    oldBY = bY;
    bVx = 1;
    bVy = 1;


    fillScreen(((5&31) | (5&31) << 5 | (5&31) << 10));
}

void updateBall() {

    oldBX = bX;
    oldBY = bY;
    bX += bVx;
    bY += bVy;

    if (bX < arenaX) {
        bX = (arenaX - bSize) + bX;
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
    if (bY + bSize >= (arenaY + arenaHeight)) {
        bY -= bY + bSize - (arenaY + arenaHeight);
        bVy = -bVy;
    }
}

void updatePlayer() {

    oldPX = pX;
    oldPY = pY;

    if ((pX == arenaX - padding) && (pY < arenaY + arenaHeight)) {
        if (!(!(~(oldButtons) & ((1<<0))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<0))))) {
            pVx = 0;
            pVy = 1;
            pY += pVy;
        } else if ((!(~(oldButtons) & ((1<<0))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<0))))){
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

                mgba_printf("hit the other side");
                if (bY > pY) {
                    shrinkHeight(startX, startY, pX + pSize, 160 - pY, arenaWidth);
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

    if ((pY == arenaY + arenaHeight) && (pX != arenaX + arenaWidth)) {
        pVx = 1;
        pVy = 0;
        pX += pVx;
    }
    if ((pX >= arenaX + arenaWidth) && (pY < arenaY - padding)) {
        pVx = 0;
        pVy = 1;
        pY -= pVy;
    }
    if ((pY == arenaY - padding -1) && (pX > arenaX - padding)) {
         pVx = 1;
         pVy = 0;
         pX -= pVx;
    }


 if (pX < lBound) {
  pX = lBound;
 }
 if (pX + pSize > rBound) {
  pX = (rBound - pSize);
        pY--;
  }
 if (pY < ((arenaY - padding) + topBound)) {
  pY = (arenaY - padding) + topBound;
 }
 if (pY + pSize > botBound) {
  pY = (botBound - pSize);
 }



    switch(lives) {
        case 3:
            break;
        case 2:
            drawString(15, 15, "    o", ((24&31) | (24&31) << 5 | (31&31) << 10));
            break;
        case 1:
            drawString(15, 15, "  o o", ((24&31) | (24&31) << 5 | (31&31) << 10));
            break;
        case 0:
            drawString(15, 15, "o o o", ((24&31) | (24&31) << 5 | (31&31) << 10));
            drawRect(20, 20, 100, 40, ((14&31) | (14&31) << 5 | (21&31) << 10));
            drawString(30, 30, "you lose :( restart application to play again", ((31&31) | (31&31) << 5 | (31&31) << 10));
            break;
    }
}


void drawBall() {
    drawRect(oldBX, oldBY, bSize, bSize, ((24&31) | (24&31) << 5 | (31&31) << 10));
    drawRect(bX, bY, bSize, bSize, ((31&31) | (0&31) << 5 | (0&31) << 10));
}

void drawPlayer() {

    drawRect(oldPX, oldPY, pSize, pSize, ((14&31) | (14&31) << 5 | (21&31) << 10));
    drawRect(pX, pY, pSize, pSize, ((31&31) | (31&31) << 5 | (31&31) << 10));

    oldPX = pX;
    oldPY = pY;
}
