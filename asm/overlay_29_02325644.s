	.include "asm/macros.inc"
	.include "overlay_29_02325644.inc"

	.text

	arm_func_start ov29_02325644
ov29_02325644: ; 0x02325644
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	mov r0, r6
	mov r4, r3
	bl GetApparentWeather
	mov r1, r0
	ldrh r0, [r5, #4]
	mov r2, r4
	bl GetMoveAnimationId
	bl GetMoveAnimation
	ldrh r1, [r7]
	ldrsh r0, [r0, #2]
	cmp r1, #0
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, #1
	bl ov29_02325D7C
	mov r0, #0x5a
	bl AdvanceFrame
	mov r0, r7
	bl ov10_022BED90
	mov r1, r6
	mov r2, #1
	bl ov29_022E6D68
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_02325644

	arm_func_start ov29_023256B4
ov29_023256B4: ; 0x023256B4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	mov r8, r2
	mov sb, r1
	mov r1, r8
	mov sl, r0
	mov r7, r3
	bl ShouldMovePlayAlternativeAnimation
	cmp r0, #0
	movne r4, #1
	mov r0, sl
	moveq r4, #0
	bl GetApparentWeather
	mov r1, r0
	ldrh r0, [r8, #4]
	mov r2, r4
	bl GetMoveAnimationId
	mov r4, r0
	bl GetMoveAnimation
	ldrsh r5, [r0, #4]
	mov r0, sb
	mov r6, #0
	bl EntityIsValid__02325620
	cmp r0, #0
	beq _02325730
	mov r0, sb
	ldr r6, [sb, #0xb4]
	bl ov29_022E5ED0
	cmp r0, #0
	bne _02325740
	b _023258E0
_02325730:
	mov r0, r7
	bl ov29_022E2CA0
	cmp r0, #0
	beq _023258E0
_02325740:
	cmp r6, #0
	cmpeq r4, #0x1f4
	beq _023258E0
	mov r0, sl
	mov r1, r8
	bl ov29_02325D20
	cmp r0, #0
	bne _023258E0
	cmp r5, #0
	beq _023258E0
	ldr r1, _023258E8 ; =0x02352AD8
	mov r0, r5
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	strh r2, [sp]
	strh r1, [sp, #2]
	bl GetEffectAnimation
	ldrsb r5, [r0, #0x19]
	mvn r0, #0
	cmp r5, r0
	beq _023257C8
	mov r0, sb
	bl EntityIsValid__02325620
	cmp r0, #0
	ldreqh r1, [sp]
	ldreqh r0, [sp, #2]
	streqh r1, [sp, #0xc]
	streqh r0, [sp, #0xe]
	beq _023257D8
	add r0, sp, #0xc
	add r1, sb, #0x2c
	and r2, r5, #0xff
	bl sub_0201CF90
	b _023257D8
_023257C8:
	ldrh r1, [sp]
	ldrh r0, [sp, #2]
	strh r1, [sp, #0xc]
	strh r0, [sp, #0xe]
_023257D8:
	strh r4, [sp, #4]
	cmp r6, #0
	beq _02325828
	ldrsh r1, [r6, #4]
	cmp r4, #0x1f4
	mov r0, #0
	strh r1, [sp, #6]
	ldr r1, [sb, #0xc]
	cmpne r4, #0x50
	mov r1, r1, asr #8
	strh r1, [sp, #8]
	ldr r1, [sb, #0x10]
	mov r1, r1, asr #8
	strh r1, [sp, #0xa]
	str r0, [sp, #0x10]
	ldreq r0, [sl, #0xb4]
	ldreqb r0, [r0, #0x4c]
	andeq r0, r0, #7
	streq r0, [sp, #0x10]
	b _0232586C
_02325828:
	mov r0, #1
	strh r0, [sp, #6]
	ldrsh r2, [r7]
	mov r0, #0x18
	mov r1, #0
	smulbb r2, r2, r0
	add r2, r2, #0xc
	mov r2, r2, lsl #8
	mov r2, r2, asr #8
	strh r2, [sp, #8]
	ldrsh r2, [r7, #2]
	smulbb r0, r2, r0
	add r0, r0, #0x10
	mov r0, r0, lsl #8
	mov r0, r0, asr #8
	strh r0, [sp, #0xa]
	str r1, [sp, #0x10]
_0232586C:
	mov r1, #0
	add r0, sp, #4
	str r1, [sp, #0x14]
	bl ov10_022BF160
	cmp r0, #0
	beq _02325894
	mov r0, #0x5d
	bl ov29_0234BA54
	mov r0, #0x5d
	bl AdvanceFrame
_02325894:
	add r0, sp, #4
	bl ov10_022BFC5C
	mov r4, r0
	mov r0, #0x5b
	bl AdvanceFrame
	mov r0, r4
	mov r1, sb
	mov r2, #6
	bl ov29_022E6D68
	mov r0, r4, lsl #0x10
	mov r4, r0, asr #0x10
	mov r5, #0x28
	b _023258D0
_023258C8:
	mov r0, r5
	bl AdvanceFrame
_023258D0:
	mov r0, r4
	bl AnimationHasMoreFrames
	cmp r0, #0
	bne _023258C8
_023258E0:
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023258E8: .word 0x02352AD8
	arm_func_end ov29_023256B4

	arm_func_start ov29_023258EC
ov29_023258EC: ; 0x023258EC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x2c
	mov sl, r2
	mov r4, r1
	mov r1, sl
	mov r5, r0
	bl ShouldMovePlayAlternativeAnimation
	cmp r0, #0
	movne r6, #1
	mov r0, r5
	moveq r6, #0
	bl GetApparentWeather
	mov r1, r0
	ldrh r0, [sl, #4]
	mov r2, r6
	bl GetMoveAnimationId
	mov r6, r0
	bl GetMoveAnimation
	ldrsh r7, [r0, #4]
	mov r0, r4
	bl EntityIsValid__02325620
	cmp r0, #0
	bne _02325958
	mov r0, r5
	bl EntityIsValid__02325620
	cmp r0, #0
	beq _02325B04
_02325958:
	mov r0, r5
	ldr r8, [r5, #0xb4]
	ldr sb, [r4, #0xb4]
	bl ov29_022E5ED0
	cmp r0, #0
	beq _02325B04
	mov r0, r4
	bl ov29_022E5ED0
	cmp r0, #0
	beq _02325B04
	mov r0, r5
	mov r1, sl
	bl ov29_02325D20
	cmp r0, #0
	bne _02325B04
	cmp r8, #0
	cmpne sb, #0
	beq _02325B04
	cmp r7, #0
	beq _02325B04
	ldr r1, _02325B0C ; =0x02352AD8
	mov r0, r7
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	strh r2, [sp]
	strh r1, [sp, #2]
	bl GetEffectAnimation
	ldrsb ip, [r0, #0x19]
	mov r0, #0
	add r7, sp, #0x18
	strh r6, [sp, #0x18]
	sub r6, r0, #1
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldmia r7!, {r0, r1, r2, r3}
	cmp ip, r6
	ldr r6, [r7]
	add r7, sp, #4
	stmia r7!, {r0, r1, r2, r3}
	str r6, [r7]
	beq _02325A24
	and r6, ip, #0xff
	add r0, sp, #0x20
	mov r2, r6
	add r1, r4, #0x2c
	bl sub_0201CF90
	add r0, sp, #0xc
	mov r2, r6
	add r1, r5, #0x2c
	bl sub_0201CF90
	b _02325A3C
_02325A24:
	ldrh r1, [sp]
	ldrh r0, [sp, #2]
	strh r1, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r1, [sp, #0xc]
	strh r0, [sp, #0xe]
_02325A3C:
	ldrsh r1, [sb, #4]
	add r0, sp, #0x18
	strh r1, [sp, #0x1a]
	ldr r1, [r4, #0xc]
	mov r1, r1, asr #8
	strh r1, [sp, #0x1c]
	ldr r1, [r4, #0x10]
	mov r1, r1, asr #8
	strh r1, [sp, #0x1e]
	ldrsh r1, [r8, #4]
	strh r1, [sp, #6]
	ldr r1, [r5, #0xc]
	mov r1, r1, asr #8
	strh r1, [sp, #8]
	ldr r1, [r5, #0x10]
	mov r1, r1, asr #8
	strh r1, [sp, #0xa]
	bl ov10_022BF160
	cmp r0, #0
	beq _02325A9C
	mov r0, #0x5d
	bl ov29_0234BA54
	mov r0, #0x5d
	bl AdvanceFrame
_02325A9C:
	add r0, sp, #0x18
	bl ov10_022BFC5C
	mov r7, r0
	add r0, sp, #4
	bl ov10_022BFC5C
	mov r6, r0
	mov r0, #0x5b
	bl AdvanceFrame
	mov r0, r7
	mov r1, r4
	mov r2, #6
	bl ov29_022E6D68
	mov r0, r6
	mov r1, r5
	mov r2, #6
	bl ov29_022E6D68
	mov r0, r7, lsl #0x10
	mov r4, r0, asr #0x10
	mov r5, #0x28
	b _02325AF4
_02325AEC:
	mov r0, r5
	bl AdvanceFrame
_02325AF4:
	mov r0, r4
	bl AnimationHasMoreFrames
	cmp r0, #0
	bne _02325AEC
_02325B04:
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02325B0C: .word 0x02352AD8
	arm_func_end ov29_023258EC

	arm_func_start GetMoveAnimationId
GetMoveAnimationId: ; 0x02325B10
	cmp r0, #0x1f
	bne _02325B68
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _02325B64
_02325B24: ; jump table
	b _02325B44 ; case 0
	b _02325B48 ; case 1
	b _02325B50 ; case 2
	b _02325B44 ; case 3
	b _02325B58 ; case 4
	b _02325B60 ; case 5
	b _02325B44 ; case 6
	b _02325B60 ; case 7
_02325B44:
	bx lr
_02325B48:
	ldr r0, _02325C44 ; =0x0000021F
	bx lr
_02325B50:
	ldr r0, _02325C48 ; =0x00000222
	bx lr
_02325B58:
	ldr r0, _02325C4C ; =0x00000221
	bx lr
_02325B60:
	mov r0, #0x220
_02325B64:
	bx lr
_02325B68:
	cmp r2, #0
	bxeq lr
	cmp r0, #0x9c
	bgt _02325BDC
	cmp r0, #0x97
	blt _02325B98
	beq _02325C2C
	cmp r0, #0x99
	beq _02325C34
	cmp r0, #0x9c
	ldreq r0, _02325C50 ; =0x00000229
	bx lr
_02325B98:
	cmp r0, #0x3c
	bgt _02325BC0
	bge _02325C24
	cmp r0, #8
	bgt _02325BB4
	ldreq r0, _02325C54 ; =0x00000223
	bx lr
_02325BB4:
	cmp r0, #0x19
	ldreq r0, _02325C58 ; =0x0000022D
	bx lr
_02325BC0:
	cmp r0, #0x4b
	bgt _02325BD0
	ldreq r0, _02325C5C ; =0x00000225
	bx lr
_02325BD0:
	cmp r0, #0x64
	ldreq r0, _02325C60 ; =0x00000226
	bx lr
_02325BDC:
	cmp r0, #0xed
	bgt _02325C04
	bge _02325C3C
	cmp r0, #0xcd
	bgt _02325BF8
	ldreq r0, _02325C64 ; =0x0000022A
	bx lr
_02325BF8:
	cmp r0, #0xe3
	ldreq r0, _02325C68 ; =0x0000022E
	bx lr
_02325C04:
	cmp r0, #0x15c
	bgt _02325C14
	ldreq r0, _02325C6C ; =0x0000022B
	bx lr
_02325C14:
	ldr r1, _02325C70 ; =0x000001DD
	cmp r0, r1
	moveq r0, #0x230
	bx lr
_02325C24:
	mov r0, #0x224
	bx lr
_02325C2C:
	ldr r0, _02325C74 ; =0x00000227
	bx lr
_02325C34:
	mov r0, #0x228
	bx lr
_02325C3C:
	mov r0, #0x22c
	bx lr
	.align 2, 0
_02325C44: .word 0x0000021F
_02325C48: .word 0x00000222
_02325C4C: .word 0x00000221
_02325C50: .word 0x00000229
_02325C54: .word 0x00000223
_02325C58: .word 0x0000022D
_02325C5C: .word 0x00000225
_02325C60: .word 0x00000226
_02325C64: .word 0x0000022A
_02325C68: .word 0x0000022E
_02325C6C: .word 0x0000022B
_02325C70: .word 0x000001DD
_02325C74: .word 0x00000227
	arm_func_end GetMoveAnimationId

	arm_func_start ShouldMovePlayAlternativeAnimation
ShouldMovePlayAlternativeAnimation: ; 0x02325C78
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrh r1, [r4, #4]
	mov r5, r0
	cmp r1, #0xed
	bne _02325CC8
	bl EntityIsValid__02325620
	cmp r0, #0
	beq _02325D04
	ldr r0, [r5]
	cmp r0, #1
	bne _02325D04
	ldr r1, [r5, #0xb4]
	ldrb r0, [r1, #0x5e]
	cmp r0, #0xe
	ldrneb r0, [r1, #0x5f]
	cmpne r0, #0xe
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02325CC8:
	cmp r1, #0x19
	cmpne r1, #0xe3
	bne _02325CEC
	mov r0, r5
	bl ov29_023007A8
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02325CEC:
	cmp r1, #0x97
	bne _02325D04
	bl GetApparentWeather
	cmp r0, #1
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_02325D04:
	mov r0, r5
	mov r1, r4
	bl ov29_023245A4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ShouldMovePlayAlternativeAnimation

	arm_func_start ov29_02325D20
ov29_02325D20: ; 0x02325D20
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrh r1, [r4, #4]
	mov r5, r0
	cmp r1, #0x9c
	bne _02325D4C
	bl GetTileAtEntity
	bl ov29_02337E2C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02325D4C:
	ldrh r0, [r4, #4]
	cmp r0, #8
	bne _02325D74
	mov r0, r5
	bl GetTileAtEntity
	ldrh r0, [r0]
	and r0, r0, #3
	cmp r0, #1
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02325D74:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02325D20

	arm_func_start ov29_02325D7C
ov29_02325D7C: ; 0x02325D7C
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl ov10_022BF160
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0x5d
	bl ov29_0234BA54
	mov r0, #0x5d
	bl AdvanceFrame
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #5
	mov r1, #0
	bl ov29_022EA428
	mov r0, #0x5c
	bl AdvanceFrame
	ldmia sp!, {r4, pc}
	arm_func_end ov29_02325D7C

	arm_func_start ov29_02325DC0
ov29_02325DC0: ; 0x02325DC0
	stmdb sp!, {r3, lr}
	str r3, [sp]
	mov r3, #0x100
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02325DC0

	arm_func_start ov29_02325DE4
ov29_02325DE4: ; 0x02325DE4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _02325E50
	ldr r1, _02325E5C ; =0x022C4440
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02325E50
	ldr r0, _02325E60 ; =0x02352AEC
	mov r3, r4
	ldr r2, [r0]
	mov r0, r6
	mov r1, r5
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	bl LowerDefensiveStat
_02325E50:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02325E5C: .word 0x022C4440
_02325E60: .word 0x02352AEC
	arm_func_end ov29_02325DE4

	arm_func_start ov29_02325E64
ov29_02325E64: ; 0x02325E64
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr ip, _02325EB8 ; =0x0237CA70
	str r3, [sp]
	ldr ip, [ip]
	ldr r3, _02325EBC ; =0x02352AF0
	mov r4, #0
	ldr r3, [r3, ip, lsl #2]
	bl DealDamage
	cmp r0, #0
	ldreq r0, _02325EC0 ; =0x0237CA69
	moveq r1, #1
	streqb r1, [r0]
	ldr r1, _02325EB8 ; =0x0237CA70
	movne r4, #1
	ldr r2, [r1]
	mov r0, r4
	add r2, r2, #1
	str r2, [r1]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02325EB8: .word 0x0237CA70
_02325EBC: .word 0x02352AF0
_02325EC0: .word 0x0237CA69
	arm_func_end ov29_02325E64

	arm_func_start ov29_02325EC4
ov29_02325EC4: ; 0x02325EC4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	ldr r1, _02325EFC ; =0x022C4860
	mov r0, r4
	mov r2, #1
	bl CalcStatusDuration
	mov r2, r0
	mov r0, r5
	mov r1, r4
	add r2, r2, #1
	bl TryInflictYawningStatus
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02325EFC: .word 0x022C4860
	arm_func_end ov29_02325EC4

	arm_func_start ov29_02325F00
ov29_02325F00: ; 0x02325F00
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	ldr r1, _02325F38 ; =0x022C4720
	mov r0, r4
	mov r2, #1
	bl CalcStatusDuration
	mov r2, r0
	mov r0, r5
	mov r1, r4
	mov r3, #1
	bl TryInflictSleepStatus
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02325F38: .word 0x022C4720
	arm_func_end ov29_02325F00

	arm_func_start ov29_02325F3C
ov29_02325F3C: ; 0x02325F3C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	ldr r1, _02325F70 ; =0x022C4724
	mov r0, r4
	mov r2, #1
	bl CalcStatusDuration
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl TryInflictNightmareStatus
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02325F70: .word 0x022C4724
	arm_func_end ov29_02325F3C

	arm_func_start ov29_02325F74
ov29_02325F74: ; 0x02325F74
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl GetApparentWeather
	mov ip, #1
	ldr r1, _02325FB0 ; =0x022C4984
	mov r0, r0, lsl #1
	ldrsh r2, [r1, r0]
	mov r0, r5
	mov r1, r4
	mov r3, #0
	str ip, [sp]
	bl TryIncreaseHp
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02325FB0: .word 0x022C4984
	arm_func_end ov29_02325F74

	arm_func_start ov29_02325FB4
ov29_02325FB4: ; 0x02325FB4
	stmdb sp!, {r3, lr}
	bl ov29_02319584
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02325FB4

	arm_func_start ov29_02325FC4
ov29_02325FC4: ; 0x02325FC4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #0
	bl GetTileAtEntity
	mov sb, r0
	bl ov29_02337E2C
	cmp r0, #0
	beq _02326000
	ldrh r0, [sb]
	and r0, r0, #3
	cmp r0, #1
	beq _02326014
_02326000:
	ldr r2, _0232607C ; =0x00000EC4
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02326074
_02326014:
	mov r0, r8
	mov r1, r6
	bl ov29_023245A4
	cmp r0, #0
	beq _02326050
	ldr r1, _02326080 ; =0x022C47E4
	mov r0, r8
	ldr r3, [r1]
	mov r1, r7
	mov r2, r6
	str r5, [sp]
	bl DealDamage
	mov r0, r8
	bl ov29_02318D58
	b _02326070
_02326050:
	ldr r0, _02326084 ; =0x00000CD6
	bl StringFromMessageId
	str r0, [sp]
	mov r0, r8
	mov r1, r8
	mov r3, r6
	mov r2, #0xa
	bl ov29_02318BBC
_02326070:
	mov r4, #1
_02326074:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0232607C: .word 0x00000EC4
_02326080: .word 0x022C47E4
_02326084: .word 0x00000CD6
	arm_func_end ov29_02325FC4

	arm_func_start ov29_02326088
ov29_02326088: ; 0x02326088
	stmdb sp!, {r3, lr}
	ldr r2, _023260A4 ; =0x02352AE8
	mov r3, #1
	ldr r2, [r2]
	bl LowerHitChanceStat
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_023260A4: .word 0x02352AE8
	arm_func_end ov29_02326088

	arm_func_start ov29_023260A8
ov29_023260A8: ; 0x023260A8
	stmdb sp!, {r3, lr}
	ldr r2, _023260CC ; =0x02352AEC
	mov ip, #1
	ldr r2, [r2]
	mov r3, #0x80
	str ip, [sp]
	bl ApplyOffensiveStatMultiplier
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_023260CC: .word 0x02352AEC
	arm_func_end ov29_023260A8

	arm_func_start ov29_023260D0
ov29_023260D0: ; 0x023260D0
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, _02326120 ; =0x022C4654
	ldr r2, _02326124 ; =0x02353538
	ldrsh r3, [r3]
	ldr r2, [r2]
	mov r5, r0
	mov r4, r1
	add r2, r2, #0xcd00
	mov r0, #1
	mov r1, #0
	strh r3, [r2, #0x42]
	bl ov29_023354C4
	cmp r0, #0
	bne _02326118
	ldr r2, _02326128 ; =0x00000EC5
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02326118:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02326120: .word 0x022C4654
_02326124: .word 0x02353538
_02326128: .word 0x00000EC5
	arm_func_end ov29_023260D0

	arm_func_start ov29_0232612C
ov29_0232612C: ; 0x0232612C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, _0232617C ; =0x022C4654
	ldr r2, _02326180 ; =0x02353538
	ldrsh r3, [r3]
	ldr r2, [r2]
	mov r5, r0
	mov r4, r1
	add r2, r2, #0xcd00
	mov r0, #1
	mov r1, #0
	strh r3, [r2, #0x44]
	bl ov29_023354C4
	cmp r0, #0
	bne _02326174
	ldr r2, _02326184 ; =0x00000EC8
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02326174:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0232617C: .word 0x022C4654
_02326180: .word 0x02353538
_02326184: .word 0x00000EC8
	arm_func_end ov29_0232612C

	arm_func_start ov29_02326188
ov29_02326188: ; 0x02326188
	stmdb sp!, {r3, lr}
	mov r2, #1
	mov r3, #0
	bl ov29_02305C28
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02326188

	arm_func_start ov29_023261A0
ov29_023261A0: ; 0x023261A0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _023261FC
	ldr r1, _02326208 ; =0x022C462C
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _023261FC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl LowerSpeed
_023261FC:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02326208: .word 0x022C462C
	arm_func_end ov29_023261A0

	arm_func_start ov29_0232620C
ov29_0232620C: ; 0x0232620C
	stmdb sp!, {r3, lr}
	mov r2, #0
	bl ov29_02316720
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232620C

	arm_func_start ov29_02326220
ov29_02326220: ; 0x02326220
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, _02326260 ; =0x00000CCF
	mov r5, r1
	mov r4, r2
	bl StringFromMessageId
	str r0, [sp]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #0xc
	bl ov29_02318BBC
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02326260: .word 0x00000CCF
	arm_func_end ov29_02326220

	arm_func_start ov29_02326264
ov29_02326264: ; 0x02326264
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x20
	mov r7, r1
	ldr r5, [r7, #0xb4]
	mov r4, #0
	ldrsh r5, [r5, #0x10]
	mov r8, r0
	mov r6, r2
	add r2, r5, r5, lsr #31
	mov r5, r3
	strb r4, [sp, #0x1c]
	movs sl, r2, asr #1
	beq _02326304
	mov r0, r6
	bl GetMoveType
	mov r4, r0
	ldrh r0, [r6, #4]
	bl GetMoveCategory
	mov sb, r0
	mov r1, r5
	mov r0, r6
	bl ov29_02324E44
	add r3, sp, #0x1c
	stmia sp, {r3, r4, sb}
	str r0, [sp, #0xc]
	mov r5, #0
	str r5, [sp, #0x10]
	mov r3, #1
	str r3, [sp, #0x14]
	mov r1, r7
	mov r2, sl
	mov r0, r8
	str r5, [sp, #0x18]
	bl CalcDamageFixedWrapper
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	moveq r0, #1
	movne r0, r5
	strb r0, [sp, #0x1c]
	b _0232630C
_02326304:
	ldr r2, _02326318 ; =0x00000EC9
	bl LogMessageByIdWithPopupCheckUserTarget
_0232630C:
	ldrb r0, [sp, #0x1c]
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02326318: .word 0x00000EC9
	arm_func_end ov29_02326264

	arm_func_start ov29_0232631C
ov29_0232631C: ; 0x0232631C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r4, [r6, #0xb4]
	ldr r0, [r5, #0xb4]
	ldrsh r3, [r4, #0x10]
	ldrsh r2, [r0, #0x10]
	ldr r1, _02326400 ; =0x000003E7
	add r2, r3, r2
	add r2, r2, r2, lsr #31
	mov r2, r2, lsl #0xf
	mov r2, r2, asr #0x10
	strh r2, [r4, #0x10]
	strh r2, [r0, #0x10]
	ldrsh r3, [r4, #0x12]
	ldrsh r2, [r4, #0x16]
	add r3, r3, r2
	cmp r3, r1
	ldrsh r2, [r4, #0x10]
	movle r1, r3
	cmp r2, r1
	ble _02326384
	ldr r1, _02326400 ; =0x000003E7
	cmp r3, r1
	movgt r3, r1
	strh r3, [r4, #0x10]
_02326384:
	ldrsh r2, [r0, #0x12]
	ldrsh r1, [r0, #0x16]
	ldr r3, _02326400 ; =0x000003E7
	add r2, r2, r1
	cmp r2, r3
	ldrsh r1, [r0, #0x10]
	movle r3, r2
	cmp r1, r3
	ble _023263B8
	ldr r1, _02326400 ; =0x000003E7
	cmp r2, r1
	movgt r2, r1
	strh r2, [r0, #0x10]
_023263B8:
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r5
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0x108]
	ldr r2, _02326404 ; =0x00000ECA
	mov r1, r5
	cmp r0, #1
	movlo r0, #1
	strlob r0, [r4, #0x108]
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02326400: .word 0x000003E7
_02326404: .word 0x00000ECA
	arm_func_end ov29_0232631C

	arm_func_start ov29_02326408
ov29_02326408: ; 0x02326408
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r1
	ldr r8, [sb, #0xb4]
	mov r7, #0
	mov sl, r0
	mov r6, r7
	add r5, r8, #0x124
	mov fp, #1
_0232642C:
	ldrb r0, [r5, r6, lsl #3]
	mov r4, r6, lsl #3
	tst r0, #1
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _023264A0
	ldrb r0, [r5, r4]
	tst r0, #0x20
	bne _02326494
	tst r0, #0x10
	beq _023264A0
	bl ov29_0234B034
	mov r1, #0
	add r2, r5, r4
	mov r3, r1
	bl FormatMoveStringMore
	ldr r2, _02326548 ; =0x00000ECB
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	ldrb r0, [r5, r4]
	mov r7, #1
	orr r0, r0, #0x20
	strb r0, [r5, r4]
	b _023264A0
_02326494:
	tst r0, #0x10
	biceq r0, r0, #0x20
	streqb r0, [r5, r4]
_023264A0:
	add r6, r6, #1
	cmp r6, #4
	blt _0232642C
	ldrb r0, [r8, #0x144]
	tst r0, #0x20
	bne _02326504
	tst r0, #0x10
	beq _02326510
	add r0, sp, #0
	mov r1, #0x160
	bl InitMove
	ldrb r0, [r8, #0x144]
	mov r7, #1
	orr r0, r0, #0x20
	strb r0, [r8, #0x144]
	bl ov29_0234B034
	mov r1, #0
	add r2, sp, #0
	mov r3, r1
	bl FormatMoveStringMore
	ldr r2, _02326548 ; =0x00000ECB
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02326510
_02326504:
	tst r0, #0x10
	biceq r0, r0, #0x20
	streqb r0, [r8, #0x144]
_02326510:
	cmp r7, #0
	beq _0232652C
	ldrb r0, [r8, #0xd2]
	cmp r0, #1
	moveq r0, #0
	streqb r0, [r8, #0xd2]
	b _0232653C
_0232652C:
	ldr r2, _0232654C ; =0x00000ECC
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_0232653C:
	mov r0, r7
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02326548: .word 0x00000ECB
_0232654C: .word 0x00000ECC
	arm_func_end ov29_02326408

	arm_func_start ov29_02326550
ov29_02326550: ; 0x02326550
	stmdb sp!, {r3, lr}
	mov r2, #1
	mov r3, r2
	bl LowerSpeed
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02326550

	arm_func_start ov29_02326568
ov29_02326568: ; 0x02326568
	stmdb sp!, {r3, r4, r5, lr}
	mov r2, #1
	mov r3, #0
	mov r5, r0
	mov r4, r1
	bl TryInflictConfusedStatus
	ldr r1, _023265A0 ; =0x02352AEC
	mov r0, r5
	ldr r2, [r1]
	mov r1, r4
	mov r3, #2
	bl BoostOffensiveStat
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023265A0: .word 0x02352AEC
	arm_func_end ov29_02326568

	arm_func_start ov29_023265A4
ov29_023265A4: ; 0x023265A4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #0
	bl ov29_023007A8
	cmp r0, #0
	beq _02326624
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #0x100
	str r5, [sp]
	bl DealDamage
	cmp r0, #0
	beq _02326634
	ldr r1, _02326640 ; =0x022C4600
	mov r0, r8
	ldrsh r2, [r1]
	mov r1, r7
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02326634
	mov r2, #0
	mov r0, r8
	mov r1, r7
	mov r3, r2
	bl TryInflictCringeStatus
	b _02326634
_02326624:
	ldr r2, _02326644 ; =0x00000ECD
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02326634:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02326640: .word 0x022C4600
_02326644: .word 0x00000ECD
	arm_func_end ov29_023265A4

	arm_func_start ov29_02326648
ov29_02326648: ; 0x02326648
	stmdb sp!, {r3, lr}
	ldr r2, _0232666C ; =0x02352AEC
	mov ip, #1
	ldr r2, [r2]
	mov r3, #0x40
	str ip, [sp]
	bl ApplyDefensiveStatMultiplier
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0232666C: .word 0x02352AEC
	arm_func_end ov29_02326648

	arm_func_start ov29_02326670
ov29_02326670: ; 0x02326670
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _023266CC
	ldr r1, _023266D8 ; =0x022C444C
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _023266CC
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictCringeStatus
_023266CC:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_023266D8: .word 0x022C444C
	arm_func_end ov29_02326670

	arm_func_start ov29_023266DC
ov29_023266DC: ; 0x023266DC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl GetApparentWeather
	mov r4, r0
	mov r0, r8
	mov r1, r7
	bl ov29_02307C78
	ldr ip, _02326748 ; =0x022C4B54
	ldr r2, _0232674C ; =0x022C48DC
	ldr ip, [ip, r4, lsl #2]
	ldrb r2, [r2, r4]
	str ip, [sp]
	mov r0, r8
	mov r1, r7
	mov r3, r6
	str r5, [sp, #4]
	bl ov29_02332CDC
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02326748: .word 0x022C4B54
_0232674C: .word 0x022C48DC
	arm_func_end ov29_023266DC

	arm_func_start ov29_02326750
ov29_02326750: ; 0x02326750
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r1, [r5, #0xb4]
	mov r6, r0
	ldrb r0, [r1, #0xd2]
	mov r1, r5
	mov r4, #0
	cmp r0, #9
	moveq ip, #0x200
	movne ip, #0x100
	str r3, [sp]
	mov r0, r6
	mov r3, ip
	bl DealDamage
	cmp r0, #0
	beq _023267C8
	ldr r1, _023267D4 ; =0x022C44A4
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _023267C8
	mov r0, r6
	mov r1, r5
	mov r2, #0x3b
	mov r3, #0
	bl TryInflictConstrictionStatus
_023267C8:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_023267D4: .word 0x022C44A4
	arm_func_end ov29_02326750

	arm_func_start ov29_023267D8
ov29_023267D8: ; 0x023267D8
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _02326808 ; =0x02352AE8
	mov ip, #1
	ldr r2, [r2]
	str ip, [sp]
	mov r3, #2
	str ip, [sp, #4]
	bl LowerDefensiveStat
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02326808: .word 0x02352AE8
	arm_func_end ov29_023267D8

	arm_func_start ov29_0232680C
ov29_0232680C: ; 0x0232680C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	ldr r1, [r5, #0xb4]
	mov r4, #0
	add lr, r1, #0x124
	mov ip, #1
	mov r6, r0
	mov r7, r4
	mov r3, r4
	mov r1, r4
	mov r0, ip
_02326838:
	ldrb r2, [lr, r7, lsl #3]
	add r8, lr, r7, lsl #3
	tst r2, #1
	movne r2, ip
	moveq r2, r3
	tst r2, #0xff
	beq _02326864
	ldrb r2, [r8]
	tst r2, #0x10
	movne r4, r0
	strneb r1, [r8, #6]
_02326864:
	add r7, r7, #1
	cmp r7, #4
	blt _02326838
	mov r1, r5
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	cmp r4, #0
	beq _0232689C
	ldr r2, _023268B4 ; =0x00000ECE
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023268AC
_0232689C:
	ldr r2, _023268B8 ; =0x00000ECF
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023268AC:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_023268B4: .word 0x00000ECE
_023268B8: .word 0x00000ECF
	arm_func_end ov29_0232680C

	arm_func_start ov29_023268BC
ov29_023268BC: ; 0x023268BC
	stmdb sp!, {r3, lr}
	bl ov29_02315D84
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_023268BC

	arm_func_start ov29_023268CC
ov29_023268CC: ; 0x023268CC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	ldr r1, _02326904 ; =0x022C47C4
	mov r0, r4
	mov r2, #1
	bl CalcStatusDuration
	mov r2, r0
	mov r0, r5
	mov r1, r4
	mov r3, #0
	bl ov29_02315C00
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02326904: .word 0x022C47C4
	arm_func_end ov29_023268CC

	arm_func_start ov29_02326908
ov29_02326908: ; 0x02326908
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov29_02307C78
	mov r0, r5
	mov r1, r4
	bl ov29_02319418
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_02326908

	arm_func_start ov29_0232692C
ov29_0232692C: ; 0x0232692C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	ldr r5, [sb, #0xb4]
	mov r6, r3
	mov r4, #0
	bl ov29_02307C78
	mov r0, sb
	mov r1, r8
	mov r2, r7
	mov r3, #0x100
	str r6, [sp]
	bl DealDamage
	cmp r0, #0
	beq _02326988
	mov r1, r4
	mov r0, sb
	mov r4, #1
	bl DungeonRandOutcomeUserAction
	cmp r0, #0
	movne r0, r4
	strneb r0, [r5, #0x15f]
_02326988:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_0232692C

	arm_func_start ov29_02326990
ov29_02326990: ; 0x02326990
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _023269F8
	ldr r1, _02326A04 ; =0x022C4428
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _023269F8
	ldr r0, _02326A08 ; =0x02352AEC
	mov ip, #0
	ldr r2, [r0]
	mov r0, r6
	mov r1, r5
	mov r3, #0x80
	str ip, [sp]
	bl ApplyOffensiveStatMultiplier
_023269F8:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02326A04: .word 0x022C4428
_02326A08: .word 0x02352AEC
	arm_func_end ov29_02326990

	arm_func_start ov29_02326A0C
ov29_02326A0C: ; 0x02326A0C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r2, _02326A6C ; =0x02352AEC
	ldr r4, [r6, #0xb4]
	mov ip, #1
	strh ip, [r4, #0x10]
	ldr r2, [r2]
	mov r3, #0x40
	mov r5, r1
	str ip, [sp]
	bl ApplyOffensiveStatMultiplier
	ldr r0, _02326A70 ; =0x02352AE8
	mov ip, #1
	ldr r2, [r0]
	mov r0, r6
	mov r1, r5
	mov r3, #0x40
	str ip, [sp]
	bl ApplyOffensiveStatMultiplier
	mov r0, #1
	strb r0, [r4, #0x15e]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02326A6C: .word 0x02352AEC
_02326A70: .word 0x02352AE8
	arm_func_end ov29_02326A0C

	arm_func_start ov29_02326A74
ov29_02326A74: ; 0x02326A74
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _02326AD4
	ldr r1, _02326AE0 ; =0x022C4500
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02326AD4
	ldr r1, _02326AE4 ; =0x02352AEC
	mov r0, r6
	ldr r2, [r1]
	mov r1, r5
	mov r3, #0
	bl LowerHitChanceStat
_02326AD4:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02326AE0: .word 0x022C4500
_02326AE4: .word 0x02352AEC
	arm_func_end ov29_02326A74

	arm_func_start ov29_02326AE8
ov29_02326AE8: ; 0x02326AE8
	stmdb sp!, {r3, r4, r5, lr}
	mov r2, #1
	mov r3, #0
	mov r5, r0
	mov r4, r1
	bl TryInflictConfusedStatus
	ldr r1, _02326B20 ; =0x02352AE8
	mov r0, r5
	ldr r2, [r1]
	mov r1, r4
	mov r3, #1
	bl BoostOffensiveStat
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02326B20: .word 0x02352AE8
	arm_func_end ov29_02326AE8

	arm_func_start ov29_02326B24
ov29_02326B24: ; 0x02326B24
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	bl ov29_02313C74
	movs r4, r0
	beq _02326B94
	ldr r3, [r5, #0xb4]
	ldrb r0, [r3, #0x15c]
	cmp r0, #0
	bne _02326BAC
	mov r0, #1
	mov r1, r5
	mov r2, #0
	strb r0, [r3, #0x15c]
	bl SubstitutePlaceholderStringTags
	cmp r4, #1
	bne _02326B80
	ldr r2, _02326BB8 ; =0x00000CDD
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02326BAC
_02326B80:
	ldr r2, _02326BBC ; =0x00000CDC
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02326BAC
_02326B94:
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, #1
	str r2, [sp]
	bl TryInflictBurnStatus
_02326BAC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02326BB8: .word 0x00000CDD
_02326BBC: .word 0x00000CDC
	arm_func_end ov29_02326B24

	arm_func_start ov29_02326BC0
ov29_02326BC0: ; 0x02326BC0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x20
	mov sb, r0
	mov r4, r3
	mov r8, r1
	mov r7, r2
	ldr lr, [sb, #0xb4]
	mov r6, #1
	mov ip, #0
	ldr r3, _02326C98 ; =0x022C4C0C
	ldr r0, _02326C9C ; =0x000003E7
	b _02326C18
_02326BF0:
	mov r5, ip, lsl #2
	ldrsh r2, [r3, r5]
	cmp r2, #0
	blt _02326C20
	ldrsh r1, [lr, #0xe]
	cmp r1, r2
	ldrlt r0, _02326CA0 ; =0x022C4C0E
	ldrltsh r6, [r0, r5]
	blt _02326C20
	add ip, ip, #1
_02326C18:
	cmp ip, r0
	blt _02326BF0
_02326C20:
	mov r0, r7
	bl GetMoveType
	mov r5, r0
	ldrh r0, [r7, #4]
	bl GetMoveCategory
	mov r1, r4
	mov r4, r0
	mov r0, r7
	bl ov29_02324E44
	add r3, sp, #0x1c
	stmia sp, {r3, r5}
	str r4, [sp, #8]
	mov r2, r6
	str r0, [sp, #0xc]
	mov r6, #0
	str r6, [sp, #0x10]
	mov r3, #1
	str r3, [sp, #0x14]
	mov r1, r8
	mov r0, sb
	str r6, [sp, #0x18]
	bl CalcDamageFixedWrapper
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	moveq r0, #1
	movne r0, r6
	strb r0, [sp, #0x1c]
	and r0, r0, #0xff
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02326C98: .word 0x022C4C0C
_02326C9C: .word 0x000003E7
_02326CA0: .word 0x022C4C0E
	arm_func_end ov29_02326BC0

	arm_func_start ov29_02326CA4
ov29_02326CA4: ; 0x02326CA4
	ldr ip, _02326CB0 ; =ov29_02314EB8
	mov r2, #1
	bx ip
	.align 2, 0
_02326CB0: .word ov29_02314EB8
	arm_func_end ov29_02326CA4

	arm_func_start ov29_02326CB4
ov29_02326CB4: ; 0x02326CB4
	stmdb sp!, {r3, lr}
	mov r2, #4
	bl ov29_02318D98
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02326CB4

	arm_func_start ov29_02326CC8
ov29_02326CC8: ; 0x02326CC8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #0
	bl ov29_02307C78
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #0x100
	str r5, [sp]
	bl DealDamage
	cmp r0, #0
	beq _02326D40
	ldr r1, _02326D4C ; =0x022C4688
	mov r0, r8
	ldrsh r2, [r1]
	mov r1, r7
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02326D40
	mov r2, #0
	mov r0, r8
	mov r1, r7
	mov r3, r2
	str r2, [sp]
	bl TryInflictBurnStatus
_02326D40:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02326D4C: .word 0x022C4688
	arm_func_end ov29_02326CC8

	arm_func_start ov29_02326D50
ov29_02326D50: ; 0x02326D50
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #0
	bl ov29_02307C78
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, #0x100
	str r5, [sp]
	bl DealDamage
	cmp r0, #0
	beq _02326DC8
	ldr r1, _02326DD4 ; =0x022C4544
	mov r0, r8
	ldrsh r2, [r1]
	mov r1, r7
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02326DC8
	mov r2, #0
	mov r0, r8
	mov r1, r7
	mov r3, r2
	str r2, [sp]
	bl TryInflictBurnStatus
_02326DC8:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02326DD4: .word 0x022C4544
	arm_func_end ov29_02326D50

	arm_func_start ov29_02326DD8
ov29_02326DD8: ; 0x02326DD8
	stmdb sp!, {r3, lr}
	ldrh r3, [r2, #4]
	ldr r2, _02326E00 ; =0x0000013B
	cmp r3, r2
	moveq r2, #0x7a
	movne r2, #0x51
	mov r3, #0
	bl ov29_023174C8
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_02326E00: .word 0x0000013B
	arm_func_end ov29_02326DD8

	arm_func_start ov29_02326E04
ov29_02326E04: ; 0x02326E04
	stmdb sp!, {r3, lr}
	ldr r2, _02326E1C ; =0x02352AE8
	ldr r2, [r2]
	bl BoostHitChanceStat
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_02326E1C: .word 0x02352AE8
	arm_func_end ov29_02326E04

	arm_func_start ov29_02326E20
ov29_02326E20: ; 0x02326E20
	stmdb sp!, {r3, lr}
	ldr ip, [r1, #0xb4]
	mov lr, #1
	ldrb ip, [ip, #0xd2]
	add ip, ip, #0xf9
	and ip, ip, #0xff
	cmp ip, #1
	movls lr, #2
	str r3, [sp]
	mov r3, lr, lsl #8
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02326E20

	arm_func_start ov29_02326E60
ov29_02326E60: ; 0x02326E60
	stmdb sp!, {r3, lr}
	ldr r2, _02326E7C ; =0x02352AEC
	mov r3, #1
	ldr r2, [r2]
	bl BoostDefensiveStat
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_02326E7C: .word 0x02352AEC
	arm_func_end ov29_02326E60

	arm_func_start ov29_02326E80
ov29_02326E80: ; 0x02326E80
	stmdb sp!, {r3, lr}
	mov r2, #1
	mov r3, #0
	bl TryInflictParalysisStatus
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02326E80

	arm_func_start ov29_02326E98
ov29_02326E98: ; 0x02326E98
	stmdb sp!, {r3, lr}
	ldr r2, _02326EB4 ; =0x02352AEC
	mov r3, #1
	ldr r2, [r2]
	bl BoostOffensiveStat
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_02326EB4: .word 0x02352AEC
	arm_func_end ov29_02326E98

	arm_func_start ov29_02326EB8
ov29_02326EB8: ; 0x02326EB8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r6, r1
	mov r1, r5
	mov r7, r0
	mov r4, r3
	bl ov29_023245A4
	cmp r0, #0
	beq _02326F14
	ldr r1, _02326F40 ; =0x022C48B0
	mov r0, r7
	ldr r3, [r1]
	mov r1, r6
	mov r2, r5
	str r4, [sp]
	bl DealDamage
	cmp r0, #0
	movne r1, #1
	moveq r1, #0
	mov r0, r7
	and r4, r1, #0xff
	bl ov29_02318D58
	b _02326F38
_02326F14:
	ldr r0, _02326F44 ; =0x00000CCD
	bl StringFromMessageId
	str r0, [sp]
	mov r0, r7
	mov r1, r7
	mov r3, r5
	mov r2, #4
	bl ov29_02318BBC
	mov r4, #1
_02326F38:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02326F40: .word 0x022C48B0
_02326F44: .word 0x00000CCD
	arm_func_end ov29_02326EB8

	arm_func_start ov29_02326F48
ov29_02326F48: ; 0x02326F48
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, _02326F88 ; =0x00000CCE
	mov r5, r1
	mov r4, r2
	bl StringFromMessageId
	str r0, [sp]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #1
	bl ov29_02318BBC
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02326F88: .word 0x00000CCE
	arm_func_end ov29_02326F48

	arm_func_start ov29_02326F8C
ov29_02326F8C: ; 0x02326F8C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r3, #0
	mov r6, r0
	strb r3, [sp, #0x1c]
	ldr r3, [r6, #0xb4]
	ldr r0, _0232702C ; =0x000003E7
	ldr r3, [r3, #0xb8]
	mov r8, r2
	mov r4, r3, lsl #1
	cmp r0, r3, lsl #1
	movlt r4, r0
	mov r0, r8
	mov r5, r1
	bl GetMoveType
	mov r7, r0
	ldrh r0, [r8, #4]
	bl GetMoveCategory
	add r2, sp, #0x1c
	stmia sp, {r2, r7}
	str r0, [sp, #8]
	ldr r1, _02327030 ; =0x0000023E
	mov ip, #0
	str r1, [sp, #0xc]
	str ip, [sp, #0x10]
	mov r3, #1
	str r3, [sp, #0x14]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str ip, [sp, #0x18]
	bl CalcDamageFixedWrapper
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	strb r0, [sp, #0x1c]
	and r0, r0, #0xff
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0232702C: .word 0x000003E7
_02327030: .word 0x0000023E
	arm_func_end ov29_02326F8C

	arm_func_start ov29_02327034
ov29_02327034: ; 0x02327034
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _023270A0
	ldr r1, _023270AC ; =0x022C4450
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _023270A0
	ldr r0, _023270B0 ; =0x02352AEC
	mov r3, r4
	ldr r2, [r0]
	mov r0, r6
	mov r1, r5
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	bl LowerDefensiveStat
_023270A0:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_023270AC: .word 0x022C4450
_023270B0: .word 0x02352AEC
	arm_func_end ov29_02327034

	arm_func_start ov29_023270B4
ov29_023270B4: ; 0x023270B4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _02327110
	ldr r1, _0232711C ; =0x022C4534
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02327110
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictCringeStatus
_02327110:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0232711C: .word 0x022C4534
	arm_func_end ov29_023270B4

	arm_func_start ov29_02327120
ov29_02327120: ; 0x02327120
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232717C
	ldr r1, _02327188 ; =0x022C4658
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232717C
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictParalysisStatus
_0232717C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02327188: .word 0x022C4658
	arm_func_end ov29_02327120

	arm_func_start ov29_0232718C
ov29_0232718C: ; 0x0232718C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x20
	mov r4, #0
	mov sb, r0
	strb r4, [sp, #0x1c]
	mov r8, r1
	ldr r1, [r8, #0xb4]
	ldr r0, [sb, #0xb4]
	ldrsh r1, [r1, #0x10]
	ldrsh r0, [r0, #0x10]
	mov r7, r2
	mov r6, r3
	subs r5, r1, r0
	mov r0, r8
	movmi r5, r4
	bl ov29_02319748
	cmp r0, #0
	mov r0, r7
	movne r8, sb
	bl GetMoveType
	mov r4, r0
	ldrh r0, [r7, #4]
	bl GetMoveCategory
	mov r1, r6
	mov r6, r0
	mov r0, r7
	bl ov29_02324E44
	mov r2, r5
	add r5, sp, #0x1c
	str r5, [sp]
	stmib sp, {r4, r6}
	str r0, [sp, #0xc]
	mov r3, #0
	str r3, [sp, #0x10]
	mov r4, #1
	str r4, [sp, #0x14]
	mov r1, r8
	mov r0, sb
	str r3, [sp, #0x18]
	bl CalcDamageFixedWrapper
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	moveq r0, r4
	movne r0, #0
	strb r0, [sp, #0x1c]
	and r0, r0, #0xff
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_0232718C

	arm_func_start ov29_0232724C
ov29_0232724C: ; 0x0232724C
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0xb4]
	mov lr, #0x100
	ldrb ip, [ip, #0xbf]
	cmp ip, #0
	ldrne ip, _02327288 ; =0x022C4718
	str r3, [sp]
	ldrne lr, [ip]
	mov r3, lr
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	.align 2, 0
_02327288: .word 0x022C4718
	arm_func_end ov29_0232724C

	arm_func_start ov29_0232728C
ov29_0232728C: ; 0x0232728C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _023272E8
	ldr r1, _023272F4 ; =0x022C4514
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _023272E8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl LowerSpeed
_023272E8:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_023272F4: .word 0x022C4514
	arm_func_end ov29_0232728C

	arm_func_start ov29_023272F8
ov29_023272F8: ; 0x023272F8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r5, [r6, #0xb4]
	mov r7, r0
	str r3, [sp]
	mov r3, #0x100
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, r4
	orr r0, r4, r0
	ands r4, r0, #0xff
	beq _0232735C
	ldrb r0, [r5, #0xd5]
	cmp r0, #1
	cmpne r0, #3
	bne _0232735C
	ldr r2, _02327364 ; =0x00000ED2
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r7
	mov r1, r6
	bl ov29_023064F4
_0232735C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02327364: .word 0x00000ED2
	arm_func_end ov29_023272F8

	arm_func_start ov29_02327368
ov29_02327368: ; 0x02327368
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _023273C0
	mov r2, r4
	mov r0, r6
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _023273C0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl LowerSpeed
_023273C0:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov29_02327368

	arm_func_start ov29_023273CC
ov29_023273CC: ; 0x023273CC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r6, r1
	mov r1, r5
	mov r7, r0
	mov r4, r3
	bl ov29_023245A4
	cmp r0, #0
	beq _02327428
	ldr r1, _02327454 ; =0x022C48B4
	mov r0, r7
	ldr r3, [r1]
	mov r1, r6
	mov r2, r5
	str r4, [sp]
	bl DealDamage
	cmp r0, #0
	movne r1, #1
	moveq r1, #0
	mov r0, r7
	and r4, r1, #0xff
	bl ov29_02318D58
	b _0232744C
_02327428:
	mov r0, #0xcd0
	bl StringFromMessageId
	str r0, [sp]
	mov r0, r7
	mov r1, r7
	mov r3, r5
	mov r2, #5
	bl ov29_02318BBC
	mov r4, #1
_0232744C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02327454: .word 0x022C48B4
	arm_func_end ov29_023273CC

	arm_func_start ov29_02327458
ov29_02327458: ; 0x02327458
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r5, r3
	cmp sb, r8
	mov r4, #0
	beq _023274B8
	cmp sb, #0
	moveq r0, r4
	beq _02327498
	ldr r0, [sb]
	cmp r0, #1
	moveq r0, #1
	movne r0, r4
	and r0, r0, #0xff
_02327498:
	cmp r0, #0
	beq _023274B8
	mov r0, sb
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	movne r6, #0
	bne _023274C8
_023274B8:
	mov r0, r8
	mov r1, #0x3a
	bl AbilityIsActive2
	mov r6, r0
_023274C8:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	mov r3, #0x100
	str r5, [sp]
	bl DealDamage
	movs r5, r0
	movne r4, #1
	cmp r4, #0
	beq _02327590
	mov r0, sb
	mov r1, #0
	bl DungeonRandOutcomeUserAction
	cmp r0, #0
	beq _02327590
	ldr r1, [sb, #0xb4]
	add r0, r5, r5, lsr #31
	mov r5, r0, asr #1
	ldrb r0, [r1, #0x108]
	mov r4, #1
	cmp r5, #1
	movlt r5, r4
	cmp r0, #1
	movlo r0, #1
	strlob r0, [r1, #0x108]
	cmp r6, #0
	beq _0232754C
	mov r2, #0xd
	mov r0, sb
	mov r1, r5
	add r3, r2, #0x22c
	bl ov29_0230D11C
	b _02327590
_0232754C:
	ldr r1, [sb, #0xb4]
	ldrb r0, [r1, #6]
	cmp r0, #0
	movne r0, #0
	bne _0232756C
	add r0, r1, #0x228
	mov r1, #0x57
	bl ExclusiveItemEffectFlagTest
_0232756C:
	cmp r0, #0
	movne r5, r5, lsl #1
	mov r6, #1
	mov r0, sb
	mov r1, sb
	mov r2, r5
	mov r3, #0
	str r6, [sp]
	bl TryIncreaseHp
_02327590:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_02327458

	arm_func_start ov29_02327598
ov29_02327598: ; 0x02327598
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr ip, [r0, #0xb4]
	ldr r6, _02327644 ; =0x000003E7
	ldrsh r5, [ip, #0x12]
	ldrsh r4, [ip, #0x16]
	ldrsh ip, [ip, #0x10]
	add lr, r5, r4
	cmp lr, r6
	movle r6, lr
	mov r4, r6, asr #1
	add r4, r6, r4, lsr #30
	cmp ip, r4, asr #2
	movle r5, #0
	ble _0232761C
	ldr r4, _02327644 ; =0x000003E7
	cmp lr, r4
	movle r4, lr
	mov r5, r4, lsl #1
	mov r4, r5, asr #1
	add r4, r5, r4, lsr #30
	cmp ip, r4, asr #2
	movle r5, #1
	ble _0232761C
	ldr r4, _02327644 ; =0x000003E7
	cmp lr, r4
	movgt lr, r4
	add r4, lr, lr, lsl #1
	mov lr, r4, asr #1
	add lr, r4, lr, lsr #30
	cmp ip, lr, asr #2
	movle r5, #2
	movgt r5, #3
_0232761C:
	ldr r4, _02327648 ; =0x022C4994
	str r3, [sp]
	ldr r3, [r4, r5, lsl #2]
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02327644: .word 0x000003E7
_02327648: .word 0x022C4994
	arm_func_end ov29_02327598

	arm_func_start ov29_0232764C
ov29_0232764C: ; 0x0232764C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr ip, [r4, #0xb4]
	mov r5, r0
	ldrb ip, [ip, #0xbf]
	cmp ip, #4
	str r3, [sp]
	bne _02327694
	mov r3, #0x200
	bl DealDamage
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r1, r4
	mov r0, r5
	and r4, r2, #0xff
	bl ov29_023061A8
	b _023276AC
_02327694:
	mov r3, #0x100
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r4, r0, #0xff
_023276AC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_0232764C

	arm_func_start ov29_023276B4
ov29_023276B4: ; 0x023276B4
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _023276E4 ; =0x02352AE8
	mov ip, #1
	ldr r2, [r2]
	str ip, [sp]
	mov r3, #3
	str ip, [sp, #4]
	bl LowerDefensiveStat
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_023276E4: .word 0x02352AE8
	arm_func_end ov29_023276B4

	arm_func_start ov29_023276E8
ov29_023276E8: ; 0x023276E8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r2, _02327740 ; =0x02352AE8
	mov r3, #1
	ldr r2, [r2, #4]
	str r3, [sp]
	mov r5, r0
	mov r4, r1
	str r2, [sp, #8]
	str r3, [sp, #4]
	bl LowerOffensiveStat
	add r0, sp, #8
	mov r3, #1
	ldr r2, [r0]
	str r3, [sp]
	mov r0, r5
	mov r1, r4
	str r3, [sp, #4]
	bl LowerDefensiveStat
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02327740: .word 0x02352AE8
	arm_func_end ov29_023276E8

	arm_func_start ov29_02327744
ov29_02327744: ; 0x02327744
	stmdb sp!, {r3, lr}
	mov r2, #0
	bl TryInflictShadowHoldStatus
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02327744

	arm_func_start ov29_02327758
ov29_02327758: ; 0x02327758
	stmdb sp!, {r3, lr}
	mov r2, #1
	bl ov29_02319624
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02327758

	arm_func_start ov29_0232776C
ov29_0232776C: ; 0x0232776C
	stmdb sp!, {r3, r4, r5, lr}
	str r3, [sp]
	mov r3, #0x100
	mov r5, r0
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _023277AC
	mov r1, r4
	mov r0, r5
	mov r4, #1
	bl DungeonRandOutcomeUserAction
	cmp r0, #0
	ldrne r0, _023277B4 ; =0x0237CA6A
	movne r1, r4
	strneb r1, [r0]
_023277AC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023277B4: .word 0x0237CA6A
	arm_func_end ov29_0232776C

	arm_func_start ov29_023277B8
ov29_023277B8: ; 0x023277B8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r1, [r6, #0xb4]
	mov r7, r0
	ldrsh r0, [r1, #4]
	mov r5, r2
	mov r4, r3
	bl GetLowKickMultiplier
	mov r3, r0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	str r4, [sp]
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_023277B8

	arm_func_start ov29_02327804
ov29_02327804: ; 0x02327804
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _023278D4
	ldr r1, _023278E0 ; =0x022C4488
	mov r0, r6
	ldrsh r1, [r1]
	mov r4, #1
	bl DungeonRandOutcomeUserAction
	cmp r0, #0
	beq _023278D4
	mov r0, r6
	mov r1, r6
	mov r2, #0
	mov r3, r4
	ldr r5, [r6, #0xb4]
	bl BoostSpeedOneStage
	ldr r1, _023278E4 ; =0x02352AE8
	mov r0, r6
	ldr r2, [r1, #4]
	mov r1, r6
	mov r3, r4
	str r2, [sp, #8]
	bl BoostOffensiveStat
	ldr r1, _023278E4 ; =0x02352AE8
	mov r0, r6
	ldr r2, [r1]
	mov r1, r6
	mov r3, r4
	str r2, [sp, #4]
	bl BoostOffensiveStat
	add r2, sp, #8
	ldr r2, [r2]
	mov r0, r6
	mov r1, r6
	mov r3, r4
	bl BoostDefensiveStat
	add r2, sp, #4
	ldr r2, [r2]
	mov r0, r6
	mov r1, r6
	mov r3, r4
	bl BoostDefensiveStat
	ldrb r0, [r5, #0x108]
	cmp r0, #1
	movlo r0, r4
	strlob r0, [r5, #0x108]
_023278D4:
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_023278E0: .word 0x022C4488
_023278E4: .word 0x02352AE8
	arm_func_end ov29_02327804

	arm_func_start ov29_023278E8
ov29_023278E8: ; 0x023278E8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl GetApparentWeather
	mov ip, #1
	ldr r1, _02327924 ; =0x022C4954
	mov r0, r0, lsl #1
	ldrsh r2, [r1, r0]
	mov r0, r5
	mov r1, r4
	mov r3, #0
	str ip, [sp]
	bl TryIncreaseHp
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02327924: .word 0x022C4954
	arm_func_end ov29_023278E8

	arm_func_start ov29_02327928
ov29_02327928: ; 0x02327928
	stmdb sp!, {r3, lr}
	mov r2, #0
	mov r3, #1
	bl BoostSpeedOneStage
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02327928

	arm_func_start ov29_02327940
ov29_02327940: ; 0x02327940
	stmdb sp!, {r3, r4, r5, lr}
	str r3, [sp]
	mov r3, #0x100
	mov r5, r0
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _023279A0
	mov r1, r4
	mov r0, r5
	mov r4, #1
	bl DungeonRandOutcomeUserAction
	cmp r0, #0
	beq _023279A0
	ldr r0, [r5, #0xb4]
	add r0, r0, #0x100
	ldrh r0, [r0, #0x92]
	tst r0, #2
	ldrne r0, _023279A8 ; =0x0237CA6D
	movne r1, #0
	strneb r1, [r0]
	ldreq r0, _023279A8 ; =0x0237CA6D
	moveq r1, r4
	streqb r1, [r0]
_023279A0:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023279A8: .word 0x0237CA6D
	arm_func_end ov29_02327940

	arm_func_start ov29_023279AC
ov29_023279AC: ; 0x023279AC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	ldr r1, _023279E0 ; =0x022C4798
	mov r0, r4
	mov r2, #0
	bl CalcStatusDuration
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl ov29_02315B70
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_023279E0: .word 0x022C4798
	arm_func_end ov29_023279AC

	arm_func_start ov29_023279E4
ov29_023279E4: ; 0x023279E4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _02327A20 ; =0x02352AEC
	mov r3, #1
	ldr r2, [r2]
	mov r5, r0
	mov r4, r1
	bl BoostDefensiveStat
	ldr r1, _02327A24 ; =0x02352AE8
	mov r0, r5
	ldr r2, [r1]
	mov r1, r4
	mov r3, #1
	bl BoostDefensiveStat
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02327A20: .word 0x02352AEC
_02327A24: .word 0x02352AE8
	arm_func_end ov29_023279E4

	arm_func_start ov29_02327A28
ov29_02327A28: ; 0x02327A28
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r2
	mov r7, r1
	mov r1, r6
	mov r8, r0
	mov r5, r3
	mov r4, #0
	bl ov29_023245A4
	cmp r0, #0
	beq _02327AB8
	ldr r1, _02327AE8 ; =0x022C48A8
	mov r0, r8
	ldr r3, [r1]
	mov r1, r7
	mov r2, r6
	str r5, [sp]
	bl DealDamage
	cmp r0, #0
	beq _02327AAC
	ldr r1, _02327AEC ; =0x022C4538
	mov r0, r8
	ldrsh r2, [r1]
	mov r1, r7
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02327AAC
	mov r2, #0
	mov r0, r8
	mov r1, r7
	mov r3, r2
	bl TryInflictCringeStatus
_02327AAC:
	mov r0, r8
	bl ov29_02318D58
	b _02327ADC
_02327AB8:
	ldr r0, _02327AF0 ; =0x00000CD1
	bl StringFromMessageId
	str r0, [sp]
	mov r0, r8
	mov r1, r8
	mov r3, r6
	mov r2, #3
	bl ov29_02318BBC
	mov r4, #1
_02327ADC:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02327AE8: .word 0x022C48A8
_02327AEC: .word 0x022C4538
_02327AF0: .word 0x00000CD1
	arm_func_end ov29_02327A28

	arm_func_start ov29_02327AF4
ov29_02327AF4: ; 0x02327AF4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _02327B4C
	ldr r1, _02327B58 ; =0x022C4634
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02327B4C
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl TryInflictFrozenStatus
_02327B4C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02327B58: .word 0x022C4634
	arm_func_end ov29_02327AF4

	arm_func_start ov29_02327B5C
ov29_02327B5C: ; 0x02327B5C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _02327BCC
	ldr r1, _02327BD8 ; =0x022C4604
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r6
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02327BCC
	ldr r0, _02327BDC ; =0x02352AEC
	ldr r5, [r6, #0xb4]
	ldr r2, [r0]
	mov r0, r6
	mov r1, r6
	mov r3, r4
	bl BoostOffensiveStat
	ldrb r0, [r5, #0x108]
	cmp r0, #1
	movlo r0, r4
	strlob r0, [r5, #0x108]
_02327BCC:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02327BD8: .word 0x022C4604
_02327BDC: .word 0x02352AEC
	arm_func_end ov29_02327B5C

	arm_func_start ov29_02327BE0
ov29_02327BE0: ; 0x02327BE0
	stmdb sp!, {r3, lr}
	bl ov29_02319378
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02327BE0

	arm_func_start ov29_02327BF0
ov29_02327BF0: ; 0x02327BF0
	stmdb sp!, {r3, lr}
	mov r2, #1
	mov r3, r2
	bl LowerSpeed
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02327BF0

	arm_func_start ov29_02327C08
ov29_02327C08: ; 0x02327C08
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _02327C64
	ldr r1, _02327C70 ; =0x022C4690
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02327C64
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictConfusedStatus
_02327C64:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02327C70: .word 0x022C4690
	arm_func_end ov29_02327C08

	arm_func_start ov29_02327C74
ov29_02327C74: ; 0x02327C74
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r0, #0x80
	mov r1, #0x180
	mov r5, r2
	mov r4, r3
	bl DungeonRandRange
	ldr r1, [r7, #0xb4]
	mov r2, r5
	ldrb r1, [r1, #0xa]
	mul r1, r0, r1
	movs r3, r1, asr #8
	movmi r3, #1
	cmp r3, #0xc7
	movgt r3, #0xc7
	mov r0, r7
	mov r1, r6
	str r4, [sp]
	bl ov29_02332F18
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_02327C74

	arm_func_start ov29_02327CD8
ov29_02327CD8: ; 0x02327CD8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr ip, [sp, #0x30]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	str ip, [sp]
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _02327D4C
	ldrsh r2, [sp, #0x2c]
	mov r0, r6
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _02327D4C
	add r0, sp, #0x24
	mov ip, r4
	ldr r2, [r0]
	str ip, [sp]
	mov ip, #0
	ldrsh r3, [sp, #0x28]
	mov r0, r6
	mov r1, r5
	str ip, [sp, #4]
	bl LowerDefensiveStat
_02327D4C:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov29_02327CD8

	arm_func_start ov29_02327D60
ov29_02327D60: ; 0x02327D60
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	str r3, [sp]
	mov r3, #0x100
	mov r5, r0
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _02327DC0
	mov r1, r4
	mov r0, r5
	mov r4, #1
	bl DungeonRandOutcomeUserAction
	cmp r0, #0
	beq _02327DC0
	ldr r0, _02327DCC ; =0x02352AE8
	mov ip, #0
	ldr r2, [r0]
	str ip, [sp]
	mov r0, r5
	mov r1, r5
	mov r3, #2
	str ip, [sp, #4]
	bl LowerOffensiveStat
_02327DC0:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02327DCC: .word 0x02352AE8
	arm_func_end ov29_02327D60

	arm_func_start ov29_02327DD0
ov29_02327DD0: ; 0x02327DD0
	stmdb sp!, {r3, lr}
	bl TryInflictSleeplessStatus
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_02327DD0

	arm_func_start ov29_02327DE0
ov29_02327DE0: ; 0x02327DE0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr ip, [r0, #0xb4]
	ldr r6, _02327E8C ; =0x000003E7
	ldrsh r5, [ip, #0x12]
	ldrsh r4, [ip, #0x16]
	ldrsh ip, [ip, #0x10]
	add lr, r5, r4
	cmp lr, r6
	movle r6, lr
	mov r4, r6, asr #1
	add r4, r6, r4, lsr #30
	cmp ip, r4, asr #2
	movle r5, #0
	ble _02327E64
	ldr r4, _02327E8C ; =0x000003E7
	cmp lr, r4
	movle r4, lr
	mov r5, r4, lsl #1
	mov r4, r5, asr #1
	add r4, r5, r4, lsr #30
	cmp ip, r4, asr #2
	movle r5, #1
	ble _02327E64
	ldr r4, _02327E8C ; =0x000003E7
	cmp lr, r4
	movgt lr, r4
	add r4, lr, lr, lsl #1
	mov lr, r4, asr #1
	add lr, r4, lr, lsr #30
	cmp ip, lr, asr #2
	movle r5, #2
	movgt r5, #3
_02327E64:
	ldr r4, _02327E90 ; =0x022C49A4
	str r3, [sp]
	ldr r3, [r4, r5, lsl #2]
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02327E8C: .word 0x000003E7
_02327E90: .word 0x022C49A4
	arm_func_end ov29_02327DE0

	arm_func_start ov29_02327E94
ov29_02327E94: ; 0x02327E94
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	ldr r5, [r7, #0xb4]
	ldr r4, [r6, #0xb4]
	bl ov29_022E5474
	mov r0, #0
_02327EB4:
	add lr, r4, r0, lsl #1
	ldrsh r1, [lr, #0x24]
	add ip, r5, r0, lsl #1
	add r3, r4, r0, lsl #2
	strh r1, [ip, #0x24]
	ldrsh r1, [lr, #0x28]
	add r2, r5, r0, lsl #2
	add r0, r0, #1
	strh r1, [ip, #0x28]
	ldrsh r1, [lr, #0x2c]
	cmp r0, #2
	strh r1, [ip, #0x2c]
	ldr r1, [r3, #0x34]
	str r1, [r2, #0x34]
	ldr r1, [r3, #0x3c]
	str r1, [r2, #0x3c]
	blt _02327EB4
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02327F30 ; =0x00000D62
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldrb r0, [r5, #0x108]
	cmp r0, #1
	movlo r0, #1
	strlob r0, [r5, #0x108]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02327F30: .word 0x00000D62
	arm_func_end ov29_02327E94

	arm_func_start DealDamageWithRecoil
DealDamageWithRecoil: ; 0x02327F34
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	str r3, [sp]
	mov r3, #0x100
	mov r7, r0
	mov r6, r2
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _02327FFC
	mov r0, r7
	bl EntityIsValid__0232800C
	cmp r0, #0
	beq _02327FFC
	ldr r1, [r7, #0xb4]
	ldr r0, _02328008 ; =0x000003E7
	ldrsh r2, [r1, #0x12]
	ldrsh r1, [r1, #0x16]
	mov r4, #1
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	movs r5, r0, asr #3
	mov r0, r7
	mov r1, #7
	moveq r5, #1
	bl AbilityIsActive2
	cmp r0, #0
	bne _02327FFC
	mov r0, r7
	mov r1, #0
	bl DungeonRandOutcomeUserAction
	cmp r0, #0
	beq _02327FFC
	ldrh r1, [r6, #4]
	mov r2, #0
	mov r0, #0x23c
	stmia sp, {r1, r2}
	str r0, [sp, #8]
	mov r0, #0x14
	str r0, [sp, #0xc]
	mov r0, r4
	str r0, [sp, #0x10]
	mov r0, r7
	mov r1, r5
	mov r3, r2
	str r2, [sp, #0x14]
	bl CalcRecoilDamageFixed
_02327FFC:
	mov r0, r4
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02328008: .word 0x000003E7
	arm_func_end DealDamageWithRecoil
