	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"gba.c"
	.text
	.align	2
	.global	drawRect
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ldrh	ip, [sp, #8]
	ble	.L1
	rsb	r1, r1, r1, lsl #4
	add	r3, r2, r1, lsl #4
	add	r3, r3, r0
	mov	r0, #0
	ldr	r4, .L10
	ldr	r1, [r4]
	rsb	r4, r2, r2, lsl #31
	add	r1, r1, r3, lsl #1
	lsl	r4, r4, #1
.L3:
	cmp	r2, #0
	addgt	r3, r1, r4
	ble	.L6
.L4:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L4
.L6:
	add	r0, r0, #1
	cmp	lr, r0
	add	r1, r1, #480
	bne	.L3
.L1:
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	ldr	r3, [r3]
	add	r2, r3, #76800
.L13:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L13
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"JEZZBALL\000"
	.align	2
.LC1:
	.ascii	"press start\000"
	.text
	.align	2
	.global	startState
	.syntax unified
	.arm
	.fpu softvfp
	.type	startState, %function
startState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L24
	push	{r4, lr}
	ldr	r0, [r3]
	ldr	r1, .L24+4
	add	r2, r0, #4288
	add	r0, r0, #72704
	add	r2, r2, #16
	add	r0, r0, #720
.L19:
	sub	r3, r2, #448
.L20:
	strh	r1, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L20
	add	r2, r3, #480
	cmp	r2, r0
	bne	.L19
	ldr	r4, .L24+8
	mov	r1, #12
	ldr	r3, .L24+12
	ldr	r2, .L24+16
	mov	r0, #60
	mov	lr, pc
	bx	r4
	mov	r1, #148
	mov	r0, #60
	ldr	r3, .L24+12
	ldr	r2, .L24+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.word	21966
	.word	drawString
	.word	32536
	.word	.LC0
	.word	.LC1
	.size	startState, .-startState
	.align	2
	.global	drawStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStart, %function
drawStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L35
	ldr	ip, [r3]
	ldr	r1, .L35+4
	add	r2, ip, #4288
	add	r0, ip, #72704
	add	r2, r2, #16
	add	r0, r0, #720
.L27:
	sub	r3, r2, #448
.L28:
	strh	r1, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L28
	add	r2, r3, #480
	cmp	r2, r0
	bne	.L27
	ldr	r0, .L35+8
	add	r2, ip, #5696
	ldr	r1, .L35+12
	add	r0, ip, r0
	add	r2, r2, #42
.L29:
	sub	r3, r2, #436
.L30:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L30
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L29
	bx	lr
.L36:
	.align	2
.L35:
	.word	.LANCHOR0
	.word	21966
	.word	71978
	.word	32536
	.size	drawStart, .-drawStart
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #8]
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	cmp	ip, r1
	ble	.L41
	add	r1, r1, r3
	cmp	r1, lr
	bgt	.L43
.L41:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L43:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	cmp	r3, r0
	ble	.L41
	ldr	r3, [sp, #4]
	add	r0, r0, r2
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L45:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L45
	mov	r2, #67108864
.L46:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L46
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
