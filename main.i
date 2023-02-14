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
void update();


unsigned short buttons;
unsigned short oldButtons;


int time;
int ballSize, pX, pY, pVx, pVy;
int prevX, prevY;


int playerSize, playerX, playerY, prevPlayerX, prevPlayerY;


int arenaWidth, arenaHeight;
int arenaX, arenaY = 11;
int padding;
u16 arenaColor = ((24&31) | (24&31) << 5 | (31&31) << 10);
u16 paddingColor = ((14&31) | (14&31) << 5 | (21&31) << 10);


int topBound, botBound, lBound, rBound = 8;

int main() {

    mgba_open();
 mgba_printf("debugging initialized");

    initialize();



        drawStart();

        while (1) {

            if (time % skipFrames == 0) {
                updateBall();
            }
            update();

            oldButtons = buttons;
            buttons = (*(volatile unsigned short *)0x04000130);

            waitForVBlank();
            drawBall();
            drawPlayer();
            time++;
        }
        return 0;

}

void initialize() {
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | (1<<10);

    skipFrames = 2;
    time = 0;
    ballSize = 3;
    pX = 240 / 2;
    pY = 160 / 2;
    pVx = 1;
    pVy = 1;

    padding = 3;
    arenaHeight = 160 - 22;
    arenaWidth = 240 - 22;

    playerSize = 3;
    playerX = 8;
    playerY = 8;
    prevPlayerX = playerX;
    prevPlayerY = playerY;

    pX = 240 / 2;
    pY = 160 / 2;
    prevX = pX;
    prevY = pY;
    pVx = 1;
    pVy = 1;


    fillScreen(((5&31) | (5&31) << 5 | (5&31) << 10));

}

void updateBall() {

    prevX = pX;
    prevY = pY;
    pX += pVx;
    pY += pVy;

    if (pX <= (arenaX + padding)) {
        pX = padding + (padding - pX) + 1;
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
    if (pY + ballSize >= (arenaY + arenaHeight)) {
        pY -= pY + ballSize - (arenaY + arenaHeight);
        pVy = -pVy;
    }
}

void update() {


    int playerSpeed = 1;
    if (((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) || (!(~(oldButtons) & ((1<<4))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<4))))) {
  playerX = prevPlayerX + playerSpeed;
 }
 if (((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) || (!(~(oldButtons) & ((1<<5))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<5))))) {
  playerX = prevPlayerX - playerSpeed;
 }
 if (((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) || (!(~(oldButtons) & ((1<<6))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<6))))) {
  playerY = prevPlayerY - playerSpeed;
 }
 if (((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) || (!(~(oldButtons) & ((1<<7))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<7))))) {
  playerY = prevPlayerY + playerSpeed;
 }


 if (playerX < lBound) {
  playerX = lBound;
 }
 if (playerX + playerSize > 240 - rBound) {
  playerX = 240 - (playerSize + rBound);
 }
 if (playerY < topBound) {
  playerY = topBound;
 }
 if (playerY + playerSize > 160 - botBound) {
  playerY = 160 - (playerSize + botBound);
 }
}

void drawBall() {
    drawRect(prevX, prevY, ballSize, ballSize, ((24&31) | (24&31) << 5 | (31&31) << 10));
    drawRect(pX, pY, ballSize, ballSize, ((31&31) | (0&31) << 5 | (0&31) << 10));
}

void drawPlayer() {
    drawRect(prevPlayerX, prevPlayerY, playerSize, playerSize, ((14&31) | (14&31) << 5 | (21&31) << 10));
    drawRect(playerX, playerY, playerSize, playerSize, ((31&31) | (31&31) << 5 | (31&31) << 10));

    prevPlayerX = playerX;
    prevPlayerY = playerY;
}
