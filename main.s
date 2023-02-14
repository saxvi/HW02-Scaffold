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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, #67108864
	mov	r7, #2
	mov	r6, #0
	mov	r2, #3
	mov	ip, #120
	mov	r0, #80
	mov	r1, #1
	mov	lr, #138
	mov	r4, #218
	mov	r3, #8
	ldr	r8, .L4
	strh	r8, [r5]	@ movhi
	ldr	r5, .L4+4
	str	r7, [r5]
	ldr	r5, .L4+8
	str	r6, [r5]
	ldr	r5, .L4+12
	str	r2, [r5]
	ldr	r5, .L4+16
	str	r2, [r5]
	ldr	r5, .L4+20
	str	r2, [r5]
	ldr	r2, .L4+24
	str	ip, [r2]
	ldr	r2, .L4+28
	str	ip, [r2]
	ldr	r2, .L4+32
	str	r0, [r2]
	ldr	r2, .L4+36
	str	r0, [r2]
	ldr	r0, .L4+40
	ldr	r2, .L4+44
	str	r1, [r0]
	str	r1, [r2]
	ldr	r0, .L4+48
	ldr	r1, .L4+52
	ldr	r2, .L4+56
	str	r4, [r1]
	str	lr, [r0]
	ldr	ip, .L4+60
	ldr	lr, .L4+64
	ldr	r1, .L4+68
	str	r3, [r2]
	ldr	r0, .L4+72
	ldr	r2, .L4+76
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	skipFrames
	.word	time
	.word	ballSize
	.word	padding
	.word	playerSize
	.word	pX
	.word	prevX
	.word	pY
	.word	prevY
	.word	pVx
	.word	pVy
	.word	arenaHeight
	.word	arenaWidth
	.word	playerX
	.word	prevPlayerX
	.word	playerY
	.word	prevPlayerY
	.word	5285
	.word	fillScreen
	.size	initialize, .-initialize
	.align	2
	.global	updateBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall, %function
updateBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r1, .L12
	ldr	r6, .L12+4
	ldr	r7, .L12+8
	ldr	r2, .L12+12
	ldr	r3, [r6]
	ldr	r2, [r2]
	ldr	ip, [r7]
	ldr	lr, [r1]
	ldr	r8, .L12+16
	str	r3, [r8]
	add	r3, r3, ip
	add	r8, lr, r2
	cmp	r3, r8
	rsble	ip, ip, #0
	ldr	r4, .L12+20
	ldr	r5, .L12+24
	strle	ip, [r7]
	ldr	ip, .L12+28
	ldr	r1, [r4]
	ldr	r0, [r5]
	ldr	r8, .L12+32
	ldr	ip, [ip]
	str	r3, [r6]
	rsble	r3, r3, r2, lsl #1
	addle	r3, r3, #1
	str	r1, [r8]
	add	r1, r1, r0
	add	r8, r2, ip
	strle	r3, [r6]
	cmp	r1, r8
	rsble	r0, r0, #0
	str	r1, [r4]
	strle	r0, [r5]
	rsble	r1, r1, r2, lsl #1
	ldr	r0, .L12+36
	ldr	r2, .L12+40
	ldr	r0, [r0]
	ldr	r8, [r2]
	addle	r1, r1, #1
	add	r2, r0, r3
	add	lr, lr, r8
	strle	r1, [r4]
	cmp	r2, lr
	blt	.L9
	ldr	r8, [r7]
	sub	lr, r2, lr
	sub	r2, r3, lr
	rsb	r3, r8, #0
	str	r2, [r6]
	str	r3, [r7]
.L9:
	ldr	r3, .L12+44
	ldr	r3, [r3]
	add	r0, r0, r1
	add	ip, ip, r3
	cmp	r0, ip
	blt	.L6
	ldr	r2, [r5]
	sub	r0, r0, ip
	sub	r3, r1, r0
	rsb	r2, r2, #0
	str	r3, [r4]
	str	r2, [r5]
.L6:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	arenaX
	.word	pX
	.word	pVx
	.word	padding
	.word	prevX
	.word	pY
	.word	pVy
	.word	.LANCHOR0
	.word	prevY
	.word	ballSize
	.word	arenaWidth
	.word	arenaHeight
	.size	updateBall, .-updateBall
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L54
	ldrh	r2, [r3, #48]
	tst	r2, #16
	push	{r4, lr}
	beq	.L15
	ldr	r2, .L54+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L52
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L52
.L15:
	ldr	r3, .L54+8
	ldr	r3, [r3]
	ldr	lr, .L54+12
	add	r3, r3, #1
	str	r3, [lr]
.L16:
	ldr	r3, .L54
	ldrh	r2, [r3, #48]
	tst	r2, #32
	beq	.L17
	ldr	r2, .L54+4
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L20
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L20
.L17:
	ldr	r3, .L54+8
	ldr	r2, [r3]
	sub	r2, r2, #1
	str	r2, [lr]
.L19:
	ldr	r3, .L54
	ldrh	r1, [r3, #48]
	tst	r1, #64
	beq	.L21
	ldr	r1, .L54+4
	ldrh	r1, [r1]
	tst	r1, #64
	beq	.L53
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L53
.L21:
	ldr	r3, .L54+16
	ldr	r3, [r3]
	ldr	ip, .L54+20
	sub	r3, r3, #1
	str	r3, [ip]
.L22:
	ldr	r3, .L54
	ldrh	r1, [r3, #48]
	tst	r1, #128
	beq	.L23
	ldr	r1, .L54+4
	ldrh	r1, [r1]
	tst	r1, #128
	beq	.L26
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L26
.L23:
	ldr	r3, .L54+16
	ldr	r3, [r3]
	add	r3, r3, #1
	str	r3, [ip]
.L25:
	ldr	r1, .L54+24
	ldr	r1, [r1]
	cmp	r1, r2
	movgt	r2, r1
	strgt	r1, [lr]
	ldr	r0, .L54+28
	ldr	r1, .L54+32
	ldr	r0, [r0, #4]
	ldr	r1, [r1]
	rsb	r4, r0, #240
	add	r2, r1, r2
	cmp	r2, r4
	ldr	r2, .L54+36
	addgt	r0, r1, r0
	ldr	r2, [r2]
	rsbgt	r0, r0, #240
	strgt	r0, [lr]
	cmp	r2, r3
	movgt	r3, r2
	strgt	r2, [ip]
	ldr	r2, .L54+40
	ldr	r2, [r2]
	add	r3, r1, r3
	rsb	r0, r2, #160
	cmp	r3, r0
	addgt	r1, r1, r2
	rsbgt	r1, r1, #160
	strgt	r1, [ip]
	pop	{r4, lr}
	bx	lr
.L26:
	ldr	r3, [ip]
	b	.L25
.L53:
	ldr	ip, .L54+20
	b	.L22
.L20:
	ldr	r2, [lr]
	b	.L19
.L52:
	ldr	lr, .L54+12
	b	.L16
.L55:
	.align	2
.L54:
	.word	67109120
	.word	oldButtons
	.word	prevPlayerX
	.word	playerX
	.word	prevPlayerY
	.word	playerY
	.word	lBound
	.word	.LANCHOR0
	.word	playerSize
	.word	topBound
	.word	botBound
	.size	update, .-update
	.align	2
	.global	drawBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBall, %function
drawBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r5, .L58
	ldr	ip, .L58+4
	ldr	r3, [r5]
	ldr	r1, .L58+8
	ldr	r0, .L58+12
	sub	sp, sp, #12
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	r4, .L58+16
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	mov	ip, #31
	ldr	r3, [r5]
	str	ip, [sp]
	ldr	r1, .L58+20
	ldr	r0, .L58+24
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	ballSize
	.word	32536
	.word	prevY
	.word	prevX
	.word	drawRect
	.word	pY
	.word	pX
	.size	drawBall, .-drawBall
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L62
	ldr	r4, .L62+4
	ldr	r3, [r7]
	ldr	r5, .L62+8
	ldr	ip, .L62+12
	sub	sp, sp, #8
	mov	r2, r3
	ldr	r1, [r4]
	ldr	r0, [r5]
	str	ip, [sp]
	ldr	r8, .L62+16
	mov	lr, pc
	bx	r8
	ldr	r6, .L62+20
	ldr	r3, [r7]
	ldr	ip, .L62+24
	ldr	r7, .L62+28
	mov	r2, r3
	ldr	r0, [r7]
	ldr	r1, [r6]
	str	ip, [sp]
	mov	lr, pc
	bx	r8
	ldr	r2, [r7]
	ldr	r3, [r6]
	str	r2, [r5]
	str	r3, [r4]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	playerSize
	.word	prevPlayerY
	.word	prevPlayerX
	.word	21966
	.word	drawRect
	.word	playerY
	.word	32767
	.word	playerX
	.size	drawPlayer, .-drawPlayer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"debugging initialized\000"
	.global	__aeabi_idivmod
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	ldr	r0, .L68+4
	ldr	r3, .L68+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L68+12
	ldr	r3, .L68+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+20
	mov	lr, pc
	bx	r3
	ldr	fp, .L68+24
	ldr	r0, [r4]
	ldr	r10, .L68+28
	ldr	r9, .L68+32
	ldr	r8, .L68+36
	ldr	r5, .L68+40
	ldr	r7, .L68+44
	ldr	r6, .L68+48
.L66:
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	cmp	r1, #0
	ldreq	r3, .L68+52
	moveq	lr, pc
	bxeq	r3
.L65:
	mov	lr, pc
	bx	r9
	ldrh	r3, [r5]
	strh	r3, [r8]	@ movhi
	ldr	r3, .L68+56
	ldrh	r3, [r3, #48]
	strh	r3, [r5]	@ movhi
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	ldr	r3, .L68+60
	mov	lr, pc
	bx	r3
	ldr	r0, [r4]
	add	r0, r0, #1
	str	r0, [r4]
	b	.L66
.L69:
	.align	2
.L68:
	.word	mgba_open
	.word	.LC0
	.word	mgba_printf
	.word	time
	.word	initialize
	.word	drawStart
	.word	skipFrames
	.word	__aeabi_idivmod
	.word	update
	.word	oldButtons
	.word	buttons
	.word	waitForVBlank
	.word	drawBall
	.word	updateBall
	.word	67109120
	.word	drawPlayer
	.size	main, .-main
	.global	rBound
	.comm	lBound,4,4
	.comm	botBound,4,4
	.comm	topBound,4,4
	.global	paddingColor
	.global	arenaColor
	.comm	padding,4,4
	.global	arenaY
	.comm	arenaX,4,4
	.comm	arenaHeight,4,4
	.comm	arenaWidth,4,4
	.comm	prevPlayerY,4,4
	.comm	prevPlayerX,4,4
	.comm	playerY,4,4
	.comm	playerX,4,4
	.comm	playerSize,4,4
	.comm	prevY,4,4
	.comm	prevX,4,4
	.comm	pVy,4,4
	.comm	pVx,4,4
	.comm	pY,4,4
	.comm	pX,4,4
	.comm	ballSize,4,4
	.comm	time,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	skipFrames,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	arenaY, %object
	.size	arenaY, 4
arenaY:
	.word	11
	.type	rBound, %object
	.size	rBound, 4
rBound:
	.word	8
	.type	paddingColor, %object
	.size	paddingColor, 2
paddingColor:
	.short	21966
	.type	arenaColor, %object
	.size	arenaColor, 2
arenaColor:
	.short	32536
	.ident	"GCC: (devkitARM release 53) 9.1.0"
