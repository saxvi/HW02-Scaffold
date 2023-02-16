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
	.ascii	"o o o\000"
	.text
	.align	2
	.global	drawText
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawText, %function
drawText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #15
	push	{r4, lr}
	mov	r0, r1
	ldr	r4, .L20
	ldr	r3, .L20+4
	ldr	r2, .L20+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	drawString
	.word	32767
	.word	.LC0
	.size	drawText, .-drawText
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
	ldr	r3, .L31
	ldr	ip, [r3]
	ldr	r1, .L31+4
	add	r2, ip, #4288
	add	r0, ip, #72704
	add	r2, r2, #16
	add	r0, r0, #720
.L23:
	sub	r3, r2, #448
.L24:
	strh	r1, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L24
	add	r2, r3, #480
	cmp	r2, r0
	bne	.L23
	ldr	r0, .L31+8
	add	r2, ip, #5696
	ldr	r1, .L31+12
	add	r0, ip, r0
	add	r2, r2, #42
.L25:
	sub	r3, r2, #436
.L26:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L26
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L25
	bx	lr
.L32:
	.align	2
.L31:
	.word	.LANCHOR0
	.word	21966
	.word	71978
	.word	32536
	.size	drawStart, .-drawStart
	.align	2
	.global	newVertBound
	.syntax unified
	.arm
	.fpu softvfp
	.type	newVertBound, %function
newVertBound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r2, #0
	bxle	lr
	ldr	r3, .L43
	ldr	r2, [r3]
	add	ip, r1, ip
	rsb	r3, r1, r1, lsl #4
	str	lr, [sp, #-4]!
	rsb	ip, ip, ip, lsl #4
	add	lr, r0, r3, lsl #4
	add	r2, r2, #6
	ldr	r1, .L43+4
	lsl	ip, ip, #4
	lsl	r0, r3, #4
	add	r2, r2, lr, lsl #1
.L36:
	sub	r3, r2, #6
.L35:
	strh	r1, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L35
	add	r0, r0, #240
	cmp	r0, ip
	add	r2, r2, #480
	bne	.L36
	ldr	lr, [sp], #4
	bx	lr
.L44:
	.align	2
.L43:
	.word	.LANCHOR0
	.word	21966
	.size	newVertBound, .-newVertBound
	.align	2
	.global	newHorzBound
	.syntax unified
	.arm
	.fpu softvfp
	.type	newHorzBound, %function
newHorzBound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	newVertBound
	.size	newHorzBound, .-newHorzBound
	.align	2
	.global	drawUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawUp, %function
drawUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	newVertBound
	.size	drawUp, .-drawUp
	.align	2
	.global	drawRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRight, %function
drawRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	lr, .L55
	rsb	ip, r1, r1, lsl #4
	add	r3, r0, ip, lsl #4
	ldr	r1, [lr]
	add	r3, r3, r2
	lsl	ip, ip, #4
	rsb	lr, r2, r2, lsl #31
	ldr	r0, .L55+4
	add	r1, r1, r3, lsl #1
	add	r4, ip, #720
	lsl	lr, lr, #1
.L48:
	cmp	r2, #0
	addgt	r3, r1, lr
	ble	.L52
.L49:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L49
.L52:
	add	ip, ip, #240
	cmp	ip, r4
	add	r1, r1, #480
	bne	.L48
	pop	{r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	.LANCHOR0
	.word	21966
	.size	drawRight, .-drawRight
	.align	2
	.global	drawLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLeft, %function
drawLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L65
	add	ip, r1, #3
	ldr	r3, [r3]
	rsb	ip, ip, ip, lsl #4
	add	r1, r0, r2
	push	{r4, lr}
	add	r1, r1, ip, lsl #4
	add	r3, r3, #6
	lsl	ip, ip, #4
	rsb	lr, r2, r2, lsl #31
	ldr	r0, .L65+4
	add	r1, r3, r1, lsl #1
	add	r4, ip, #720
	lsl	lr, lr, #1
.L58:
	cmp	r2, #0
	addgt	r3, r1, lr
	ble	.L62
.L59:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L59
.L62:
	add	ip, ip, #240
	cmp	ip, r4
	add	r1, r1, #480
	bne	.L58
	pop	{r4, lr}
	bx	lr
.L66:
	.align	2
.L65:
	.word	.LANCHOR0
	.word	21966
	.size	drawLeft, .-drawLeft
	.align	2
	.global	shrinkWidth
	.syntax unified
	.arm
	.fpu softvfp
	.type	shrinkWidth, %function
shrinkWidth:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	subs	ip, r3, #0
	ldr	r4, [sp, #12]
	ble	.L68
	mov	lr, #0
	ldr	r3, .L80
	ldr	r1, [r3]
	add	r0, r0, r2
	rsb	r5, r2, r2, lsl #31
	add	r1, r1, r0, lsl #1
	ldr	r0, .L80+4
	lsl	r5, r5, #1
.L69:
	cmp	r2, #0
	addgt	r3, r1, r5
	ble	.L72
.L70:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L70
.L72:
	add	lr, lr, #1
	cmp	ip, lr
	add	r1, r1, #480
	bne	.L69
.L68:
	cmp	r4, #0
	ble	.L67
	ldr	r3, .L80
	ldr	r3, [r3]
	add	r4, r4, ip
	rsb	ip, ip, ip, lsl #4
	add	r5, r2, ip, lsl #4
	rsb	r4, r4, r4, lsl #4
	add	r2, r3, #6
	ldr	r1, .L80+8
	lsl	lr, r4, #4
	lsl	r0, ip, #4
	add	r2, r2, r5, lsl #1
.L75:
	sub	r3, r2, #6
.L74:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L74
	add	r0, r0, #240
	cmp	r0, lr
	add	r2, r2, #480
	bne	.L75
.L67:
	pop	{r4, r5, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	.LANCHOR0
	.word	5285
	.word	21966
	.size	shrinkWidth, .-shrinkWidth
	.align	2
	.global	shrinkHeight
	.syntax unified
	.arm
	.fpu softvfp
	.type	shrinkHeight, %function
shrinkHeight:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #12
	str	r2, [sp, #4]
	ldr	r2, .L98
	subs	r8, r3, #0
	ldr	r7, [sp, #4]
	ldr	ip, [r2]
	ldr	r6, [sp, #40]
	lslle	r4, r1, #4
	ble	.L83
	mov	r5, #0
	rsb	r2, r1, r1, lsl #4
	add	r2, r7, r2, lsl #4
	rsb	r9, r7, r7, lsl #31
	ldr	lr, .L98+4
	add	r2, ip, r2, lsl #1
	lsl	r9, r9, #1
	lsl	r4, r1, #4
.L84:
	cmp	r7, #0
	addgt	r3, r2, r9
	ble	.L87
.L85:
	strh	lr, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L85
.L87:
	add	r5, r5, #1
	cmp	r8, r5
	add	r2, r2, #480
	bne	.L84
.L83:
	sub	r3, r4, r1
	add	r2, r0, r6
	add	r2, r2, r3, lsl #4
	lsl	r0, r3, #4
	ldr	r1, .L98+8
	rsb	r3, r6, r6, lsl #31
	add	r2, ip, r2, lsl #1
	add	lr, r0, #720
	lsl	ip, r3, #1
.L88:
	cmp	r6, #0
	addgt	r3, r2, ip
	ble	.L92
.L89:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L89
.L92:
	add	r0, r0, #240
	cmp	r0, lr
	add	r2, r2, #480
	bne	.L88
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L99:
	.align	2
.L98:
	.word	.LANCHOR0
	.word	5285
	.word	21966
	.size	shrinkHeight, .-shrinkHeight
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
	ble	.L104
	add	r1, r1, r3
	cmp	r1, lr
	bgt	.L106
.L104:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L106:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	cmp	r3, r0
	ble	.L104
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
.L108:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L108
	mov	r2, #67108864
.L109:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L109
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.global	videoBuffer
	.global	rBound
	.global	botBound
	.global	lBound
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	rBound, %object
	.size	rBound, 4
rBound:
	.word	232
	.type	botBound, %object
	.size	botBound, 4
botBound:
	.word	152
	.type	lBound, %object
	.size	lBound, 4
lBound:
	.word	8
	.ident	"GCC: (devkitARM release 53) 9.1.0"
