#ifndef GBA_H
#define GBA_H

// Typedefs
typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;

// Display constants
#define SCREENHEIGHT 160 // Height of the GBA display
#define SCREENWIDTH  240 // Width of the GBA display

// Pointer to the start of video memory
extern volatile unsigned short *videoBuffer;

// Finds 1D position from 2D coordinates
#define OFFSET(x, y, width) ((y) * (width) + (x))

// Display control register
#define REG_DISPCTL (*(volatile unsigned short *)0x4000000)

// Bits for display control register
#define MODE(x) ((x) & 7) // Sets GBA video mode (REG_DISPCTL)
#define BG_ENABLE(x) (1 << (8 + (x % 4))) // Enables specified background (REG_DISPCTL)
#define BG2_ENABLE   (1<<10)

// Read-only, holds which scanline is being drawn
#define REG_VCOUNT (*(volatile unsigned short *)0x4000006)

// Waits until scanline has just become 160
void waitForVBlank();

// Checks for collision between two rectangles
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);

// Color
#define COLOR(r, g, b) ((r&31) | (g&31) << 5 | (b&31) << 10)
#define RGB(r, g, b) ((r&31) | (g&31) << 5 | (b&31) << 10)
#define BLACK   COLOR(0,0,0)
#define DARKGRAY COLOR(5,5,5)
#define GRAY COLOR(15,15,15)
#define LIGHTGRAY COLOR(25,25,25)
#define WHITE COLOR(31,31,31)
#define RED COLOR(31,0,0)
#define GREEN COLOR(0,31,0)
#define LIGHTGREEN COLOR(24,31,24)
#define BLUE COLOR(0,0,31)
#define LIGHTBLUE COLOR(24,24,31)
#define CYAN COLOR(0,31,31)
#define MAGENTA COLOR(31,0,31)
#define LIGHTPINK COLOR(31,24,29)
#define LIGHTPURPLE COLOR(29,24,31)
#define YELLOW COLOR(31,31,0)
#define LIGHTYELLOW COLOR(31, 31, 24)
#define PBLUE COLOR(14, 14, 21)

// Mode 3 Drawing Functions
#define setPixel(x, y, color) (videoBuffer[OFFSET(x, y, SCREENWIDTH)] = color)
void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);

// Buttons
#define REG_BUTTONS (*(volatile unsigned short *)0x04000130) // Buttons down register
#define BUTTON_A         (1<<0) // Mask for button A (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_B         (1<<1) // Mask for button B (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_SELECT    (1<<2) // Mask for button SELECT (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_START     (1<<3) // Mask for button START (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_RIGHT     (1<<4) // Mask for RIGHT button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_LEFT      (1<<5) // Mask for LEFT button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_UP        (1<<6) // Mask for UP button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_DOWN      (1<<7) // Mask for DOWN button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_RSHOULDER (1<<8) // Mask for RIGHT SHOULDER button (REG_BUTTONS or REG_KEYCNT)
#define BUTTON_LSHOULDER (1<<9) // Mask for LEFT SHOULDER button (REG_BUTTONS or REG_KEYCNT)

// Button checks
extern unsigned short oldButtons; // Keeps track of buttons pressed in previous frame
#define BUTTON_HELD(key)    (~(REG_BUTTONS) & (key)) // Checks if a button is currently pressed
#define BUTTON_PRESSED(key) (!(~(oldButtons) & (key)) && (~REG_BUTTONS & (key))) // Checks if a button is currently pressed and wasn't in the previous frame

#endif