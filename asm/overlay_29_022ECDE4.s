	.include "asm/macros.inc"
	.include "overlay_29_022ECDE4.inc"

	.text

	arm_func_start ov29_022ECDE4
ov29_022ECDE4: ; 0x022ECDE4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _022ECF34 ; =0x02353538
	mov r6, r1
	ldr r1, [r4]
	mov sb, r0
	add r1, r1, #0x20c
	mov r0, r6
	mov r8, r2
	mov r7, r3
	add r4, r1, #0x2c800
	mov r5, #0
	bl EntityIsValid__022ECDC0
	cmp r0, #0
	beq _022ECE28
	ldr r0, [r6]
	cmp r0, #1
	ldreq r5, [r6, #0xb4]
_022ECE28:
	cmp r5, #0
	ldr r6, [r8, #0xb4]
	beq _022ECE44
	mov r0, r4
	mov r1, r5
	bl ov29_02300164
	b _022ECE6C
_022ECE44:
	ldr r1, _022ECF38 ; =0x0237C974
	ldrb r0, [r1]
	cmp r0, #0
	beq _022ECE60
	mov r0, r4
	bl Strcpy
	b _022ECE6C
_022ECE60:
	ldr r1, _022ECF3C ; =0x00000A41
	mov r0, r4
	bl GetStringFromFileVeneer
_022ECE6C:
	mov r1, r6
	add r0, r4, #0x1e
	bl ov29_02300164
	cmp r7, #0
	moveq r0, #0
	streqb r0, [r4, #0x3c]
	beq _022ECE94
	mov r1, r7
	add r0, r4, #0x3c
	bl Strcpy
_022ECE94:
	mov r1, r8
	add r0, r4, #0x70
	bl ov29_022F89CC
	strh sb, [r4, #0x5a]
	ldrh r1, [r6, #0x62]
	ldr r0, _022ECF40 ; =0x000003E7
	ldr r3, _022ECF34 ; =0x02353538
	strh r1, [r4, #0x5e]
	ldrh r1, [r6, #0x64]
	strh r1, [r4, #0x60]
	ldrh r1, [r6, #0x66]
	strh r1, [r4, #0x62]
	ldr r1, [r6, #0x20]
	str r1, [r4, #0x64]
	ldrb r1, [r6, #0xa]
	strb r1, [r4, #0x6e]
	ldrsh r2, [r6, #0x12]
	ldrsh r1, [r6, #0x16]
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r4, #0x68]
	ldrb r1, [r6, #0x1a]
	ldr r0, _022ECF38 ; =0x0237C974
	mov r2, #0x28
	strb r1, [r4, #0x6a]
	ldrb r5, [r6, #0x1b]
	mov r1, #0
	strb r5, [r4, #0x6b]
	ldrb r5, [r6, #0x1c]
	strb r5, [r4, #0x6c]
	ldrb r5, [r6, #0x1d]
	strb r5, [r4, #0x6d]
	ldr r5, [r3]
	ldrb r3, [r5, #0x748]
	strb r3, [r4, #0x5c]
	ldrb r3, [r5, #0x749]
	strb r3, [r4, #0x5d]
	bl Memset
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022ECF34: .word 0x02353538
_022ECF38: .word 0x0237C974
_022ECF3C: .word 0x00000A41
_022ECF40: .word 0x000003E7
	arm_func_end ov29_022ECDE4

	arm_func_start ov29_022ECF44
ov29_022ECF44: ; 0x022ECF44
	ldr r1, _022ECF6C ; =0x02353538
	ldr r0, _022ECF70 ; =0x0002CA66
	ldr r2, [r1]
	ldr r1, _022ECF74 ; =0x00000279
	ldrsh r0, [r2, r0]
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022ECF6C: .word 0x02353538
_022ECF70: .word 0x0002CA66
_022ECF74: .word 0x00000279
	arm_func_end ov29_022ECF44

	arm_func_start ov29_022ECF78
ov29_022ECF78: ; 0x022ECF78
	ldr r1, _022ECFAC ; =0x02353538
	ldr r0, _022ECFB0 ; =0x0002CA66
	ldr r2, [r1]
	ldr r1, _022ECFB4 ; =0x0000027A
	ldrsh r2, [r2, r0]
	cmp r2, r1
	addne r0, r1, #3
	cmpne r2, r0
	addne r0, r1, #1
	cmpne r2, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022ECFAC: .word 0x02353538
_022ECFB0: .word 0x0002CA66
_022ECFB4: .word 0x0000027A
	arm_func_end ov29_022ECF78

	arm_func_start ov29_022ECFB8
ov29_022ECFB8: ; 0x022ECFB8
	stmdb sp!, {r4, lr}
	ldr r1, _022ED004 ; =0x02353538
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _022ECFF8
	add r0, r1, #0x20c
	add lr, r0, #0x2c800
	mov ip, #0xe
_022ECFDC:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _022ECFDC
	ldmia lr, {r0, r1}
	stmia r4, {r0, r1}
	ldmia sp!, {r4, pc}
_022ECFF8:
	mov r1, #0xe8
	bl MemZero
	ldmia sp!, {r4, pc}
	.align 2, 0
_022ED004: .word 0x02353538
	arm_func_end ov29_022ECFB8

	arm_func_start SetForcedLossReason
SetForcedLossReason: ; 0x022ED008
	ldr r1, _022ED018 ; =0x02353538
	ldr r1, [r1]
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_022ED018: .word 0x02353538
	arm_func_end SetForcedLossReason

	arm_func_start GetForcedLossReason
GetForcedLossReason: ; 0x022ED01C
	ldr r0, _022ED02C ; =0x02353538
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	bx lr
	.align 2, 0
_022ED02C: .word 0x02353538
	arm_func_end GetForcedLossReason

	arm_func_start ov29_022ED030
ov29_022ED030: ; 0x022ED030
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _022ED0A0 ; =0x02352690
	ldr r2, _022ED0A4 ; =0x00000401
	ldr r3, [r1, #4]
	ldr ip, [r1]
	str r3, [sp, #4]
	add r0, sp, #0
	mov r1, #4
	mov r3, #0x300
	str ip, [sp]
	bl LoadWteFromFileDirectory
	ldr r0, [sp, #4]
	mov r1, #0x400
	mov r2, #0x1d
	mov r3, #0
	bl ProcessWte
	ldr r1, [sp, #4]
	ldr r0, [sp]
	ldrh r2, [r1, #0xc]
	ldr r1, _022ED0A8 ; =0x0237C99C
	strh r2, [r1]
	bl sub_0201E080
	ldr r0, _022ED0AC ; =0x0235359C
	mov r1, #1
	strb r1, [r0]
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_022ED0A0: .word 0x02352690
_022ED0A4: .word 0x00000401
_022ED0A8: .word 0x0237C99C
_022ED0AC: .word 0x0235359C
	arm_func_end ov29_022ED030

	arm_func_start ov29_022ED0B0
ov29_022ED0B0: ; 0x022ED0B0
	ldr r0, _022ED0C0 ; =0x0235359C
	mov r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_022ED0C0: .word 0x0235359C
	arm_func_end ov29_022ED0B0

	arm_func_start ov29_022ED0C4
ov29_022ED0C4: ; 0x022ED0C4
	ldr r0, _022ED0D0 ; =0x0235359C
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0
_022ED0D0: .word 0x0235359C
	arm_func_end ov29_022ED0C4

	arm_func_start ov29_022ED0D4
ov29_022ED0D4: ; 0x022ED0D4
	cmp r0, #0
	movlt r0, #0
	cmp r0, #0xff
	ldr r1, _022ED0F0 ; =0x0235359C
	movgt r0, #0xff
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_022ED0F0: .word 0x0235359C
	arm_func_end ov29_022ED0D4

	arm_func_start ov29_022ED0F4
ov29_022ED0F4: ; 0x022ED0F4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _022ED180 ; =0x0235359C
	mov r4, r0
	ldrb r7, [r1, #4]
	cmp r7, #0x80
	ldmlsia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0x80
	mov r6, #0x80
	mov r5, #0x68
	ble _022ED174
	b _022ED144
_022ED120:
	sub r0, r7, r4
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x80
	movle r7, r6
	mov r0, r7
	bl ov29_022ED0D4
	mov r0, r5
	bl AdvanceFrame
_022ED144:
	cmp r7, #0x80
	bne _022ED120
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022ED150:
	add r0, r7, r4
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x80
	movge r7, r6
	mov r0, r7
	bl ov29_022ED0D4
	mov r0, r5
	bl AdvanceFrame
_022ED174:
	cmp r7, #0x80
	bne _022ED150
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022ED180: .word 0x0235359C
	arm_func_end ov29_022ED0F4

	arm_func_start ov29_022ED184
ov29_022ED184: ; 0x022ED184
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	ldr r3, _022ED7F0 ; =0x0235359C
	ldrb r3, [r3]
	cmp r3, #0
	beq _022ED7E8
	ldrb r4, [r2, #0x34]
	cmp r4, #0
	bne _022ED1D0
	ldrb r3, [r2, #0x23]
	cmp r3, #0
	ldreqb r3, [r2, #0x24]
	cmpeq r3, #0
	ldreqb r3, [r2, #0x30]
	cmpeq r3, #0
	movne r3, #1
	moveq r3, #0
	cmp r3, #0
	bne _022ED7E8
_022ED1D0:
	cmp r4, #0
	bne _022ED1E0
	cmp r1, #0xff
	bne _022ED370
_022ED1E0:
	add r0, sp, #0x48
	bl sub_0201E730
	ldr r1, _022ED7F4 ; =0x0237C99C
	ldr r0, _022ED7F8 ; =0x020AFC70
	ldrh r2, [r1]
	mov r3, #5
	mov r1, #0x400
	strb r3, [sp, #0x84]
	strh r2, [sp, #0x5c]
	ldr r0, [r0]
	str r1, [sp, #0x68]
	ldr r1, [r0, #0xe0]
	ldr r0, _022ED7F0 ; =0x0235359C
	add r1, r1, #0x3a00
	str r1, [sp, #0x6c]
	ldrb r6, [r0, #4]
	mov r5, #0
	mov r3, #0x30
	mov r4, #4
	mov r1, #0x100
	mov r2, #0x22
	add r0, sp, #0x48
	strb r6, [sp, #0x77]
	strh r5, [sp, #0x5e]
	strh r5, [sp, #0x60]
	strh r4, [sp, #0x62]
	strh r4, [sp, #0x64]
	strh r3, [sp, #0x72]
	strb r2, [sp, #0x86]
	strh r5, [sp, #0x48]
	strh r5, [sp, #0x4a]
	strh r1, [sp, #0x4c]
	strh r5, [sp, #0x4e]
	strh r5, [sp, #0x50]
	strh r3, [sp, #0x52]
	strh r1, [sp, #0x54]
	strh r3, [sp, #0x56]
	bl sub_0201F2A0
	mov r4, r5
	mov r3, #0x90
	mov r2, #0x100
	mov r1, #0xc0
	add r0, sp, #0x48
	strh r4, [sp, #0x48]
	strh r3, [sp, #0x4a]
	strh r2, [sp, #0x4c]
	strh r3, [sp, #0x4e]
	strh r4, [sp, #0x50]
	strh r1, [sp, #0x52]
	strh r2, [sp, #0x54]
	strh r1, [sp, #0x56]
	bl sub_0201F2A0
	mov r3, #0x30
	mov r2, #0x50
	mov r1, #0x90
	add r0, sp, #0x48
	strh r4, [sp, #0x48]
	strh r3, [sp, #0x4a]
	strh r2, [sp, #0x4c]
	strh r3, [sp, #0x4e]
	strh r4, [sp, #0x50]
	strh r1, [sp, #0x52]
	strh r2, [sp, #0x54]
	strh r1, [sp, #0x56]
	bl sub_0201F2A0
	mov r3, #0xb0
	mov r2, #0x30
	mov r1, #0x100
	mov r0, #0x90
	strh r3, [sp, #0x48]
	strh r2, [sp, #0x4a]
	strh r1, [sp, #0x4c]
	strh r2, [sp, #0x4e]
	strh r3, [sp, #0x50]
	strh r0, [sp, #0x52]
	strh r1, [sp, #0x54]
	strh r0, [sp, #0x56]
	add r0, sp, #0x48
	bl sub_0201F2A0
	mov r6, #0x50
	mov r5, #0x30
	mov r4, #0xb0
	mov r3, #0x90
	mov r2, #0
	mov r1, #0x60
	add r0, sp, #0x48
	strh r6, [sp, #0x48]
	strh r5, [sp, #0x4a]
	strh r4, [sp, #0x4c]
	strh r5, [sp, #0x4e]
	strh r6, [sp, #0x50]
	strh r3, [sp, #0x52]
	strh r4, [sp, #0x54]
	strh r3, [sp, #0x56]
	strh r2, [sp, #0x5e]
	strh r2, [sp, #0x60]
	strh r1, [sp, #0x62]
	strh r1, [sp, #0x64]
	bl sub_0201F2A0
	b _022ED7E8
_022ED370:
	ldr r6, _022ED7FC ; =0x02352698
	add r5, sp, #0
	mov r4, #4
_022ED37C:
	ldrh r3, [r6], #2
	subs r4, r4, #1
	strh r3, [r5], #2
	bne _022ED37C
	mov r3, #0x1c
	smlabb r3, r1, r3, r0
	ldr r1, [r3, #0xc]
	add r0, sp, #8
	strh r1, [sp]
	ldr r1, [r3, #0x10]
	strh r1, [sp, #2]
	ldr r1, [r3, #0x14]
	strh r1, [sp, #4]
	ldr r1, [r3, #0x18]
	strh r1, [sp, #6]
	ldrsh r5, [r2, #0xa]
	ldrsh r4, [r2, #8]
	bl sub_0201E730
	ldrsh r3, [sp, #2]
	ldrsh r6, [sp, #4]
	ldrsh lr, [sp]
	sub r3, r3, r5
	ldrsh r2, [sp, #6]
	mov r1, #5
	mov r0, #0x400
	ldr ip, _022ED7F8 ; =0x020AFC70
	mov r3, r3, lsl #0x10
	sub r6, r6, r4
	sub lr, lr, r4
	mov r4, r3, asr #0x10
	sub r5, r2, r5
	mov r3, r6, lsl #0x10
	mov r6, r5, lsl #0x10
	ldr r7, _022ED7F4 ; =0x0237C99C
	strb r1, [sp, #0x44]
	ldrh r1, [r7]
	ldr r5, [ip]
	str r0, [sp, #0x28]
	ldr r0, [r5, #0xe0]
	mov r2, lr, lsl #0x10
	add r5, r0, #0x3a00
	str r5, [sp, #0x2c]
	strh r1, [sp, #0x1c]
	ldr r0, _022ED7F0 ; =0x0235359C
	mov r1, #0
	ldrb ip, [r0, #4]
	mov r7, #4
	mov r5, #0x30
	mov r0, #0x22
	strh r5, [sp, #0x32]
	strb ip, [sp, #0x37]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r7, [sp, #0x22]
	strh r7, [sp, #0x24]
	strb r0, [sp, #0x46]
	cmp r4, #0
	mov r5, r2, asr #0x10
	mov r7, r3, asr #0x10
	mov r6, r6, asr #0x10
	ble _022ED4A4
	mov r0, r4, lsl #0x10
	mov r2, r0, asr #0x10
	mov r3, #0x100
	add r0, sp, #8
	strh r1, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh r1, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl sub_0201F2A0
_022ED4A4:
	cmp r6, #0
	movlt r0, #0
	movge r0, r6
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	rsb r0, r1, #0xc0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	cmp r0, #0
	ble _022ED508
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	mov ip, #0
	mov r3, #0x100
	add r0, sp, #8
	strh ip, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh ip, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl sub_0201F2A0
_022ED508:
	cmp r4, #0
	movlt r0, #0
	movge r0, r4
	mov r0, r0, lsl #0x10
	sub r1, r6, r0, asr #16
	cmp r1, #0xc0
	movgt r1, #0xc0
	mov ip, r0, asr #0x10
	cmp r5, #0
	mov r0, r1, lsl #0x10
	ble _022ED574
	add r1, ip, r0, asr #16
	mov r0, r5, lsl #0x10
	mov r2, r0, asr #0x10
	mov r3, #0
	mov r0, r1, lsl #0x10
	mov r1, r0, asr #0x10
	add r0, sp, #8
	strh r3, [sp, #8]
	strh ip, [sp, #0xa]
	strh r2, [sp, #0xc]
	strh ip, [sp, #0xe]
	strh r3, [sp, #0x10]
	strh r1, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x16]
	bl sub_0201F2A0
_022ED574:
	cmp r4, #0
	movlt r0, #0
	movge r0, r4
	mov r0, r0, lsl #0x10
	rsb r1, r7, #0x100
	mov r2, r1, lsl #0x10
	sub r3, r6, r0, asr #16
	cmp r3, #0xc0
	mov r2, r2, asr #0x10
	movgt r3, #0xc0
	mov r1, r0, asr #0x10
	cmp r2, #0
	mov r0, r3, lsl #0x10
	ble _022ED5EC
	add r3, r7, r2
	add r2, r1, r0, asr #16
	mov r0, r3, lsl #0x10
	mov r3, r0, asr #0x10
	mov r0, r2, lsl #0x10
	mov r2, r0, asr #0x10
	add r0, sp, #8
	strh r7, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh r7, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl sub_0201F2A0
_022ED5EC:
	mvn r0, #0x1f
	cmp r5, r0
	cmpgt r4, r0
	ble _022ED660
	cmp r5, #0x120
	cmplt r4, #0xe0
	bge _022ED660
	add r0, r5, #0x20
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	mov ip, #0
	mov r3, #0x30
	add r1, r4, #0x20
	mov r0, r1, lsl #0x10
	mov r1, r0, asr #0x10
	add r0, sp, #8
	strh ip, [sp, #0x1e]
	strh ip, [sp, #0x20]
	strh r3, [sp, #0x22]
	strh r3, [sp, #0x24]
	strh r5, [sp, #8]
	strh r4, [sp, #0xa]
	strh r2, [sp, #0xc]
	strh r4, [sp, #0xe]
	strh r5, [sp, #0x10]
	strh r1, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x16]
	bl sub_0201F2A0
_022ED660:
	sub r7, r7, #0x20
	mov r0, r7, lsl #0x10
	mvn r1, #0x1f
	cmp r1, r0, asr #16
	mov r2, r0, asr #0x10
	bge _022ED6E4
	cmp r4, r1
	ble _022ED6E4
	cmp r2, #0x120
	cmplt r4, #0xe0
	bge _022ED6E4
	add r0, r2, #0x20
	mov r0, r0, lsl #0x10
	mov ip, r0, asr #0x10
	mov r1, #0x30
	add r3, r4, #0x20
	mov r0, r3, lsl #0x10
	mov r3, r0, asr #0x10
	mov lr, #0
	add r0, sp, #8
	strh r1, [sp, #0x1e]
	strh lr, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r2, [sp, #8]
	strh r4, [sp, #0xa]
	strh ip, [sp, #0xc]
	strh r4, [sp, #0xe]
	strh r2, [sp, #0x10]
	strh r3, [sp, #0x12]
	strh ip, [sp, #0x14]
	strh r3, [sp, #0x16]
	bl sub_0201F2A0
_022ED6E4:
	sub r4, r6, #0x20
	mov r0, r4, lsl #0x10
	mvn r2, #0x1f
	mov r1, r0, asr #0x10
	cmp r5, r2
	cmpgt r1, r2
	ble _022ED764
	cmp r5, #0x120
	cmplt r1, #0xe0
	bge _022ED764
	add r0, r5, #0x20
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	mov r6, #0x30
	add r2, r1, #0x20
	mov r0, r2, lsl #0x10
	mov r2, r0, asr #0x10
	mov ip, #0
	add r0, sp, #8
	strh ip, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strh r6, [sp, #0x24]
	strh r5, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh r5, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl sub_0201F2A0
_022ED764:
	mov r0, r7, lsl #0x10
	mov r1, r4, lsl #0x10
	mvn r2, #0x1f
	cmp r2, r0, asr #16
	mov r5, r0, asr #0x10
	mov r4, r1, asr #0x10
	bge _022ED7E8
	cmp r4, r2
	ble _022ED7E8
	cmp r5, #0x120
	cmplt r4, #0xe0
	bge _022ED7E8
	add r0, r5, #0x20
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	mov r3, #0x30
	add r1, r4, #0x20
	mov r0, r1, lsl #0x10
	mov r1, r0, asr #0x10
	add r0, sp, #8
	strh r3, [sp, #0x1e]
	strh r3, [sp, #0x20]
	strh r3, [sp, #0x22]
	strh r3, [sp, #0x24]
	strh r5, [sp, #8]
	strh r4, [sp, #0xa]
	strh r2, [sp, #0xc]
	strh r4, [sp, #0xe]
	strh r5, [sp, #0x10]
	strh r1, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x16]
	bl sub_0201F2A0
_022ED7E8:
	add sp, sp, #0x88
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022ED7F0: .word 0x0235359C
_022ED7F4: .word 0x0237C99C
_022ED7F8: .word 0x020AFC70
_022ED7FC: .word 0x02352698
	arm_func_end ov29_022ED184

	arm_func_start ov29_022ED800
ov29_022ED800: ; 0x022ED800
	stmdb sp!, {r3, lr}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r3, r0, #0xe900
	ldrh r3, [r3, #0xec]
	tst r3, #1
	ldmneia sp!, {r3, pc}
	add r0, r0, #0x224
	add r0, r0, #0xac00
	bl ov29_022ED184
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022ED800

	arm_func_start ov29_022ED82C
ov29_022ED82C: ; 0x022ED82C
	stmdb sp!, {r4, lr}
	add r1, r1, #0xc1
	add r1, r1, #0x3400
	mov r1, r1, lsl #0x10
	mov r4, r0
	mov r0, r1, lsr #0x10
	bl StringFromMessageId
	mov r1, r0
	mov r0, r4
	bl Strcpy
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022ED82C

	arm_func_start ov29_022ED858
ov29_022ED858: ; 0x022ED858
	cmp r1, #0
	strne r1, [r0, #0x10]
	strneb r2, [r1, #0x20]
	bx lr
	arm_func_end ov29_022ED858

	arm_func_start ov29_022ED868
ov29_022ED868: ; 0x022ED868
	ldr r0, _022ED880 ; =0x02353538
	ldr ip, _022ED884 ; =ov29_02344148
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bx ip
	.align 2, 0
_022ED880: .word 0x02353538
_022ED884: .word ov29_02344148
	arm_func_end ov29_022ED868

	arm_func_start ov29_022ED888
ov29_022ED888: ; 0x022ED888
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r0, _022ED96C ; =0x023526A0
	mov sl, #0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	add r6, sp, #4
	strh r1, [sp]
	strh r0, [sp, #2]
	mov r4, #6
	mov fp, #2
	mov r7, sl
_022ED8B8:
	mov r0, sl, lsl #0x10
	mov r8, r7
	mov r5, r0, asr #0x10
_022ED8C4:
	mov r0, r8
	mov r1, sl
	bl GetTileSafe
	mov sb, r0
	ldrh r0, [sb, #2]
	tst r0, #4
	beq _022ED94C
	strh r8, [sp, #4]
	strh r5, [sp, #6]
	ldrh r0, [sb, #2]
	tst r0, #0x40
	movne r0, r4
	bne _022ED8FC
	bl ov29_022E7A30
_022ED8FC:
	cmp r0, #0x11
	mov r1, r6
	bne _022ED92C
	mov r2, fp
	mov r3, #0
	bl ov29_022E2260
	movs r1, r0
	beq _022ED94C
	mov r0, sb
	mov r2, #1
	bl ov29_022ED858
	b _022ED94C
_022ED92C:
	mov r2, #0
	mov r3, r2
	bl ov29_022E2260
	movs r1, r0
	beq _022ED94C
	mov r0, sb
	mov r2, #0
	bl ov29_022ED858
_022ED94C:
	add r8, r8, #1
	cmp r8, #0x38
	blt _022ED8C4
	add sl, sl, #1
	cmp sl, #0x20
	blt _022ED8B8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022ED96C: .word 0x023526A0
	arm_func_end ov29_022ED888

	arm_func_start ov29_022ED970
ov29_022ED970: ; 0x022ED970
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r1
	mov r6, r2
	mov r8, r0
	mov r0, r7
	mov r1, r6
	mov r5, r3
	bl GetTileSafe
	mov r4, r0
	add r1, sp, #0
	mov r0, r8
	mov r3, r5
	mov r2, #0
	strh r7, [sp]
	strh r6, [sp, #2]
	bl ov29_022E2260
	movs r1, r0
	beq _022ED9C8
	ldrb r2, [sp, #0x20]
	mov r0, r4
	bl ov29_022ED858
_022ED9C8:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov29_022ED970

	arm_func_start ov29_022ED9D0
ov29_022ED9D0: ; 0x022ED9D0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r0, _022EDBB8 ; =0x02353538
	ldr r1, _022EDBBC ; =0x0001A21E
	ldr r0, [r0]
	ldrsh r2, [r0, r1]
	add r1, r0, #0x1a000
	ldrb r8, [r1, #0x244]
	sub sb, r2, #5
	b _022EDB9C
_022ED9F8:
	ldr r1, _022EDBC0 ; =0x0001A21C
	mov r2, #0x18
	ldrsh r0, [r0, r1]
	mul sl, sb, r2
	sub r7, r0, #6
	mov r0, r1
	add fp, r0, #8
	ldr r0, _022EDBC4 ; =0x0000013E
	ldr r6, _022EDBC8 ; =0x0237C864
	sub r0, r0, #0x1f
	str r0, [sp, #4]
	mov r0, r1
	add r5, r0, #0xa
	ldr r4, _022EDBCC ; =0xFFFF000F
	b _022EDB7C
_022EDA34:
	mov r0, #0
	str r0, [sp]
	mov r0, r7
	mov r1, sb
	bl GetTile
	ldr r2, [r0, #0x10]
	cmp r2, #0
	beq _022EDA74
	ldr r1, [r2]
	cmp r1, #2
	bne _022EDA74
	ldrb r1, [r2, #0x20]
	cmp r1, #0
	cmpeq r8, #0
	movne r1, #1
	strne r1, [sp]
_022EDA74:
	ldrh r0, [r0]
	tst r0, #0x200
	movne r0, #1
	strne r0, [sp]
	ldr r0, [sp]
	cmp r0, #0
	beq _022EDB78
	ldr r0, _022EDBB8 ; =0x02353538
	ldr r3, [r0]
	mov r0, #0x18
	mul r2, r7, r0
	ldrsh r1, [r3, fp]
	ldrsh r0, [r3, r5]
	sub r1, r2, r1
	sub r2, sl, r0
	cmp r1, r4, asr #11
	cmpge r2, r4, asr #11
	blt _022EDB78
	ldr r0, [sp, #4]
	cmp r1, r0
	cmple r2, #0xe0
	bgt _022EDB78
	ldrh ip, [r6]
	add r0, r2, #4
	add r1, r1, #4
	bic ip, ip, #0xc00
	strh ip, [r6]
	ldrh ip, [r6, #6]
	and r3, r1, r4, lsr #23
	mov r0, r0, lsl #0x14
	and ip, ip, r4
	strh ip, [r6, #6]
	ldrh ip, [r6, #6]
	mov r1, r6
	mov r2, #0
	orr r0, ip, r0, lsr #16
	strh r0, [r6, #6]
	ldrh r0, [r6, #2]
	and r0, r0, r4, asr #7
	strh r0, [r6, #2]
	ldrh r0, [r6, #2]
	orr r0, r0, r3
	strh r0, [r6, #2]
	ldrh r0, [r6, #4]
	bic r0, r0, #0xc00
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	orr r0, r0, #0xc00
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	bic r0, r0, #0xf000
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	orr r0, r0, #0xa000
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	and r0, r0, r4, asr #6
	strh r0, [r6, #4]
	ldrh r3, [r6, #4]
	orr r0, r3, #0x3e
	orr r0, r0, #0x100
	strh r0, [r6, #4]
	ldr r0, _022EDBD0 ; =0x020AFC4C
	ldr r0, [r0]
	bl sub_0201B9F8
_022EDB78:
	add r7, r7, #1
_022EDB7C:
	ldr r0, _022EDBB8 ; =0x02353538
	ldr r1, _022EDBC0 ; =0x0001A21C
	ldr r0, [r0]
	ldrsh r1, [r0, r1]
	add r1, r1, #6
	cmp r7, r1
	blt _022EDA34
	add sb, sb, #1
_022EDB9C:
	ldr r1, _022EDBBC ; =0x0001A21E
	ldrsh r1, [r0, r1]
	add r1, r1, #5
	cmp sb, r1
	blt _022ED9F8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EDBB8: .word 0x02353538
_022EDBBC: .word 0x0001A21E
_022EDBC0: .word 0x0001A21C
_022EDBC4: .word 0x0000013E
_022EDBC8: .word 0x0237C864
_022EDBCC: .word 0xFFFF000F
_022EDBD0: .word 0x020AFC4C
	arm_func_end ov29_022ED9D0

	arm_func_start ov29_022EDBD4
ov29_022EDBD4: ; 0x022EDBD4
	stmdb sp!, {r3, r4, r5, lr}
	ldr lr, _022EDC28 ; =0x02353538
	ldrsh r5, [r0]
	ldr r3, _022EDC2C ; =0x00012AAA
	ldr r4, [lr]
	add ip, r3, #2
	strh r5, [r4, r3]
	ldrsh r4, [r0, #2]
	ldr r0, [lr]
	mov r3, #1
	strh r4, [r0, ip]
	ldr r0, [lr]
	add r0, r0, #0x12000
	strb r1, [r0, #0xaae]
	ldr r0, [lr]
	add r0, r0, #0x12000
	strb r2, [r0, #0xaaf]
	ldr r0, [lr]
	add r0, r0, #0x12000
	strb r3, [r0, #0xaa8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EDC28: .word 0x02353538
_022EDC2C: .word 0x00012AAA
	arm_func_end ov29_022EDBD4

	arm_func_start ov29_022EDC30
ov29_022EDC30: ; 0x022EDC30
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldrsh r0, [r1]
	ldrsh r1, [r1, #2]
	bl GetTileSafe
	ldrh r2, [r0]
	tst r2, #0x200
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrb r1, [r0, #7]
	cmp r1, #0xff
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	tst r2, #8
	movne r0, #0
	ldmneia sp!, {r3, pc}
	tst r2, #0x20
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrh r1, [r0]
	and r1, r1, #3
	cmp r1, #1
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022EDCB4
	ldr r0, [r0]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
_022EDCB4:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022EDC30

	arm_func_start ov29_022EDCBC
ov29_022EDCBC: ; 0x022EDCBC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	ldrsh r0, [r8]
	ldrsh r1, [r8, #2]
	mov r6, r2
	mov r5, r3
	bl GetTileSafe
	mov r4, r0
	cmp r7, #0x19
	blo _022EDD14
	mov sb, #0
	b _022EDD04
_022EDCF0:
	bl ov29_022E7A30
	mov r7, r0
	cmp r7, #0x11
	bne _022EDD0C
	add sb, sb, #1
_022EDD04:
	cmp sb, #0x1e
	blt _022EDCF0
_022EDD0C:
	cmp sb, #0x1e
	moveq r7, #0x10
_022EDD14:
	ldrh r1, [r4]
	tst r1, #0x200
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r4, #7]
	cmp r0, #0xff
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	tst r1, #8
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	tst r1, #0x20
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrh r0, [r4]
	and r0, r0, #3
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022EDDA0
	ldr r1, [r0]
	cmp r1, #2
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl ov29_022E1608
	strb r7, [r0]
	ldr r0, [r4, #0x10]
	bl ov29_022E1608
	strb r6, [r0, #1]
	ldr r1, [r4, #0x10]
	mov r0, #1
	strb r5, [r1, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022EDDA0:
	mov r0, r7
	mov r1, r8
	mov r2, r6
	mov r3, #0
	bl ov29_022E2260
	movs r1, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	mov r2, r5
	bl ov29_022ED858
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022EDCBC

	arm_func_start ov29_022EDDD4
ov29_022EDDD4: ; 0x022EDDD4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _022EDE6C ; =0x02353538
	mov r5, r0
	ldr r0, [r1]
	add r0, r0, #0x12000
	ldrb r2, [r0, #0xaa8]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r2, #0
	strb r2, [r0, #0xaa8]
	ldr r3, [r1]
	ldr r0, _022EDE70 ; =0x00012AAA
	add r2, r3, #0x12000
	ldrb r1, [r2, #0xaae]
	ldrb r2, [r2, #0xaaf]
	add r0, r3, r0
	mov r3, #1
	bl ov29_022EDCBC
	movs r4, r0
	ldr r1, _022EDE70 ; =0x00012AAA
	beq _022EDE48
	ldr r0, _022EDE6C ; =0x02353538
	ldr r2, _022EDE74 ; =0x00000E57
	ldr r3, [r0]
	mov r0, r5
	add r1, r3, r1
	bl LogMessageByIdWithPopupCheckUserUnknown
	b _022EDE60
_022EDE48:
	ldr r0, _022EDE6C ; =0x02353538
	ldr r2, _022EDE78 ; =0x00000E58
	ldr r3, [r0]
	mov r0, r5
	add r1, r3, r1
	bl LogMessageByIdWithPopupCheckUserUnknown
_022EDE60:
	bl ov29_02336F4C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EDE6C: .word 0x02353538
_022EDE70: .word 0x00012AAA
_022EDE74: .word 0x00000E57
_022EDE78: .word 0x00000E58
	arm_func_end ov29_022EDDD4

	arm_func_start ov29_022EDE7C
ov29_022EDE7C: ; 0x022EDE7C
	stmdb sp!, {r4, lr}
	mov r2, r0
	mov r4, r1
	ldrsh r0, [r2]
	ldrsh r1, [r2, #2]
	bl GetTileSafe
	ldr r2, [r0, #0x10]
	cmp r2, #0
	beq _022EDED4
	ldr r1, [r2]
	cmp r1, #2
	bne _022EDECC
	mov r1, #0
	str r1, [r2]
	str r1, [r0, #0x10]
	cmp r4, #0
	beq _022EDEC4
	bl ov29_02336F4C
_022EDEC4:
	mov r0, #1
	ldmia sp!, {r4, pc}
_022EDECC:
	mov r0, #0
	ldmia sp!, {r4, pc}
_022EDED4:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022EDE7C

	arm_func_start ov29_022EDEDC
ov29_022EDEDC: ; 0x022EDEDC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl GetTile
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _022EDF50
	ldr r0, [r1]
	cmp r0, #2
	bne _022EDF48
	ldr r0, _022EDF58 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _022EDF34
	mov r0, #1
	strb r0, [r1, #0x20]
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl ov29_023391EC
_022EDF34:
	cmp r4, #0
	beq _022EDF40
	bl ov29_02336F4C
_022EDF40:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022EDF48:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_022EDF50:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EDF58: .word 0x02353538
	arm_func_end ov29_022EDEDC

	arm_func_start ov29_022EDF5C
ov29_022EDF5C: ; 0x022EDF5C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02024FC8
	bl ov29_0234B034
	add r0, r0, r5, lsl #2
	str r4, [r0, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022EDF5C

	arm_func_start ov29_022EDF7C
ov29_022EDF7C: ; 0x022EDF7C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl sub_02024FC8
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x10]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_022EDF7C

	arm_func_start ov29_022EDFA0
ov29_022EDFA0: ; 0x022EDFA0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r1
	mov sl, r0
	ldrsh r0, [sb]
	ldrsh r1, [sb, #2]
	mov fp, r2
	mov r7, r3
	bl GetTileSafe
	ldr r4, [r0, #0x10]
	str r0, [sp, #0x10]
	cmp r4, #0
	beq _022EE2F4
	ldr r0, [r4]
	cmp r0, #2
	bne _022EE2F4
	mov r0, r4
	bl ov29_022E1608
	mov r6, r0
	ldrb r1, [r6]
	mov r0, #0
	bl ov29_022EDF5C
	ldr r0, [sp, #0x10]
	ldr r5, [r0, #0xc]
	cmp r5, #0
	ldrne r0, [r5]
	cmpne r0, #1
	ldrb r0, [r4, #0x20]
	movne r5, #0
	cmp r5, #0
	str r0, [sp, #0xc]
	mov r0, #1
	strb r0, [r4, #0x20]
	beq _022EE1D8
	mov r0, r5
	bl ov29_022F9840
	cmp r7, #0
	ldrneb r0, [r6]
	cmpne r0, #0x11
	beq _022EE148
	cmp r0, #0x17
	mov r8, #0
	moveq r7, #0x64
	beq _022EE05C
	mov r0, #0x64
	bl DungeonRandInt
	mov r7, r0
_022EE05C:
	mov r0, r5
	mov r1, #0x23
	bl ItemIsActive__022EE318
	cmp r0, #0
	ldrne r8, _022EE2FC ; =0x00000E59
	bne _022EE0C8
	mov r0, r5
	mov r1, #0x26
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022EE0C8
	mov r0, #0x32
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _022EE0C8
	mov r1, sl
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	bl ov29_023361D4
	cmp r0, #0
	ldrne r8, _022EE300 ; =0x00000E5B
	bne _022EE0C8
	mov r0, sb
	mov r1, #1
	bl ov29_022EDE7C
	ldr r8, _022EE304 ; =0x00000E5A
_022EE0C8:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	beq _022EE0EC
	ldr r0, _022EE308 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x244]
	cmp r0, #0
	beq _022EE100
_022EE0EC:
	cmp r7, #0
	bge _022EE110
	cmp r8, #0
	ldreq r8, _022EE30C ; =0x00000E5C
	b _022EE110
_022EE100:
	cmp r7, #0xf
	bge _022EE110
	cmp r8, #0
	ldreq r8, _022EE30C ; =0x00000E5C
_022EE110:
	cmp r8, #0
	beq _022EE1D8
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	beq _022EE12C
	bl ov29_02336F4C
_022EE12C:
	mov r0, sl
	mov r1, r5
	mov r2, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	cmp fp, #0
	bne _022EE1D8
	b _022EE2F4
_022EE148:
	mov r0, r5
	mov r1, #0x26
	mov r7, #0
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022EE1D8
	ldr r0, _022EE310 ; =0x022C445C
	ldrsh r0, [r0]
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	beq _022EE1A4
	mov r1, sl
	mov r0, #1
	mov r2, r7
	bl SubstitutePlaceholderStringTags
	bl ov29_023361D4
	cmp r0, #0
	ldrne r7, _022EE300 ; =0x00000E5B
	bne _022EE1A4
	mov r0, sb
	mov r1, #1
	bl ov29_022EDE7C
	ldr r7, _022EE304 ; =0x00000E5A
_022EE1A4:
	cmp r7, #0
	beq _022EE1D8
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	beq _022EE1C0
	bl ov29_02336F4C
_022EE1C0:
	mov r0, sl
	mov r1, r5
	mov r2, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	cmp fp, #0
	beq _022EE2F4
_022EE1D8:
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	beq _022EE264
	mov r0, #0
	mov r1, #0x11c
	bl ov29_022E56A0
	bl ov29_02336F4C
	ldrb r2, [r6]
	mov r0, sl
	mov r1, sb
	bl ov29_022E58B0
	mov r0, r4
	bl ov29_022E1608
	mov r6, r0
	mov r0, #0
	ldrb r1, [r6]
	bl ov29_022EDF5C
	ldr r0, _022EE308 ; =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x23e]
	cmp r0, #0
	beq _022EE248
	ldr r1, _022EE314 ; =0x00000E5D
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022EE264
_022EE248:
	ldrb r1, [r6]
	mov r0, sl
	add r1, r1, #0x51
	add r1, r1, #0xb00
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl LogMessageByIdWithPopupCheckUser
_022EE264:
	cmp r5, #0
	beq _022EE29C
	ldrb r0, [r6, #1]
	cmp r0, #2
	bne _022EE288
	mov r0, r5
	mov r1, #1
	bl ov29_0230D47C
	b _022EE29C
_022EE288:
	cmp r0, #1
	bne _022EE29C
	mov r0, r5
	mov r1, #0
	bl ov29_0230D47C
_022EE29C:
	str sb, [sp]
	ldrb r6, [r6]
	mov r0, r4
	ldr r3, [sp, #0x10]
	mov r1, sl
	mov r2, r5
	str r6, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	bl ov29_022EF154
	mov r4, r0
	mov r0, r5
	bl EntityIsValid__022EE348
	cmp r0, #0
	beq _022EE2E0
	mov r0, r5
	bl EnemyEvolution
_022EE2E0:
	cmp r4, #0
	beq _022EE2F4
	mov r0, sb
	mov r1, #1
	bl ov29_022EDE7C
_022EE2F4:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EE2FC: .word 0x00000E59
_022EE300: .word 0x00000E5B
_022EE304: .word 0x00000E5A
_022EE308: .word 0x02353538
_022EE30C: .word 0x00000E5C
_022EE310: .word 0x022C445C
_022EE314: .word 0x00000E5D
	arm_func_end ov29_022EDFA0

	arm_func_start ItemIsActive__022EE318
ItemIsActive__022EE318: ; 0x022EE318
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ItemIsActive__022EE318
