	.include "asm/macros.inc"
	.include "overlay_29_0232A3FC.inc"

	.text

	arm_func_start ov29_0232A3FC
ov29_0232A3FC: ; 0x0232A3FC
	stmdb sp!, {r3, lr}
	ldr r2, _0232A410 ; =0x00000EE3
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0232A410: .word 0x00000EE3
	arm_func_end ov29_0232A3FC

	arm_func_start ov29_0232A414
ov29_0232A414: ; 0x0232A414
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0xb4]
	mov r5, r0
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0232A454
	mov r0, #0x32
	bl DungeonRandOutcome__022EAB20
	cmp r0, #0
	movne r2, #1
	moveq r2, #2
	mov r0, r5
	mov r1, r4
	bl TryInflictNappingStatus
	b _0232A474
_0232A454:
	ldr r1, _0232A47C ; =0x022C4748
	mov r0, r4
	mov r2, #0
	bl CalcStatusDuration
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl TryInflictNappingStatus
_0232A474:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0232A47C: .word 0x022C4748
	arm_func_end ov29_0232A414

	arm_func_start ov29_0232A480
ov29_0232A480: ; 0x0232A480
	stmdb sp!, {r3, lr}
	bl TryInflictIngrainStatus
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232A480

	arm_func_start ov29_0232A490
ov29_0232A490: ; 0x0232A490
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, [r1, #0xb4]
	ldrb r3, [r4, #0x11e]
	cmp r3, #0
	beq _0232A4CC
	ldr r2, _0232A4E0 ; =0x022C49D4
	mov ip, #1
	ldr r2, [r2, r3, lsl #2]
	mov r3, #0
	str ip, [sp]
	bl TryIncreaseHp
	mov r0, #0
	strb r0, [r4, #0x11e]
	b _0232A4D4
_0232A4CC:
	ldr r2, _0232A4E4 ; =0x00000EE4
	bl LogMessageByIdWithPopupCheckUserTarget
_0232A4D4:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0232A4E0: .word 0x022C49D4
_0232A4E4: .word 0x00000EE4
	arm_func_end ov29_0232A490

	arm_func_start ov29_0232A4E8
ov29_0232A4E8: ; 0x0232A4E8
	stmdb sp!, {r3, lr}
	mov r2, #1
	mov r3, #0
	bl ov29_023160DC
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232A4E8

	arm_func_start ov29_0232A500
ov29_0232A500: ; 0x0232A500
	stmdb sp!, {r3, lr}
	str r3, [sp]
	mov r3, #0x100
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232A500

	arm_func_start ov29_0232A524
ov29_0232A524: ; 0x0232A524
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	str r3, [sp]
	mov r3, #0x100
	mov r4, #0
	mov r5, r0
	bl DealDamage
	cmp r0, #0
	movne r4, #1
	cmp r4, #0
	beq _0232A59C
	ldr r0, _0232A5A8 ; =0x02352AEC
	mov ip, #0
	ldr r2, [r0]
	str ip, [sp]
	mov r0, r5
	mov r1, r5
	mov r3, #1
	str r2, [sp, #8]
	str ip, [sp, #4]
	bl LowerOffensiveStat
	add r0, sp, #8
	mov ip, #0
	ldr r2, [r0]
	str ip, [sp]
	mov r0, r5
	mov r1, r5
	mov r3, #1
	str ip, [sp, #4]
	bl LowerDefensiveStat
_0232A59C:
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0232A5A8: .word 0x02352AEC
	arm_func_end ov29_0232A524

	arm_func_start ov29_0232A5AC
ov29_0232A5AC: ; 0x0232A5AC
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr ip, [sp, #0x28]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	str ip, [sp]
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232A628
	ldr r1, _0232A63C ; =0x022C44C4
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232A628
	add r0, sp, #0x24
	ldr r2, [r0]
	ldr r5, [r6, #0xb4]
	mov r0, r6
	mov r1, r6
	mov r3, r4
	bl BoostDefensiveStat
	ldrb r0, [r5, #0x108]
	cmp r0, #1
	movlo r0, r4
	strlob r0, [r5, #0x108]
_0232A628:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0232A63C: .word 0x022C44C4
	arm_func_end ov29_0232A5AC

	arm_func_start ov29_0232A640
ov29_0232A640: ; 0x0232A640
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, [r0, #0xb4]
	ldrb ip, [r4, #0x11e]
	cmp ip, #0
	beq _0232A670
	str r3, [sp]
	mov r3, ip, lsl #8
	bl DealDamage
	mov r0, #0
	strb r0, [r4, #0x11e]
	b _0232A678
_0232A670:
	ldr r2, _0232A684 ; =0x00000EE5
	bl LogMessageByIdWithPopupCheckUserTarget
_0232A678:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0232A684: .word 0x00000EE5
	arm_func_end ov29_0232A640

	arm_func_start ov29_0232A688
ov29_0232A688: ; 0x0232A688
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232A6E0
	mov r2, r4
	mov r0, r6
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232A6E0
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictConfusedStatus
_0232A6E0:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov29_0232A688

	arm_func_start ov29_0232A6EC
ov29_0232A6EC: ; 0x0232A6EC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r0, #0
	mov r1, r7
	mov r2, r0
	ldr r4, [r7, #0xb4]
	ldr r5, [r6, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, r6
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r7
	mov r1, r6
	mov r2, #0x2c
	mov r3, #1
	bl DefenderAbilityIsActive__02329F14
	cmp r0, #0
	beq _0232A758
	ldr r2, _0232A820 ; =0x00000EE6
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	b _0232A818
_0232A758:
	ldrh r0, [r5, #0x62]
	strh r0, [sp, #4]
	ldrh r1, [r5, #0x64]
	ldrb r0, [sp, #4]
	strh r1, [sp, #6]
	ldrh r1, [r5, #0x66]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	strh r1, [sp, #8]
	tst r0, #0xff
	bne _0232A7A0
	ldr r2, _0232A824 ; =0x00000EE8
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	b _0232A818
_0232A7A0:
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0232A7B4
	add r0, r5, #0x62
	bl RemoveEquivItem
_0232A7B4:
	add r0, r5, #0x62
	bl ItemZInit
	ldr r2, _0232A828 ; =0x00000EE7
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	ldrb r1, [r4, #0x4c]
	ldr r0, _0232A82C ; =0x0235171C
	ldr r5, _0232A830 ; =0x0235171E
	mov r1, r1, lsl #2
	ldrsh r1, [r0, r1]
	add r2, sp, #4
	mov r0, r7
	strh r1, [sp]
	ldrb r4, [r4, #0x4c]
	mov r1, r6
	add r3, sp, #0
	mov r4, r4, lsl #2
	ldrsh r4, [r5, r4]
	strh r4, [sp, #2]
	bl ov29_0232A834
	mov r0, r7
	mov r1, r6
	bl ov29_02321164
	mov r0, #1
_0232A818:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0232A820: .word 0x00000EE6
_0232A824: .word 0x00000EE8
_0232A828: .word 0x00000EE7
_0232A82C: .word 0x0235171C
_0232A830: .word 0x0235171E
	arm_func_end ov29_0232A6EC

	arm_func_start ov29_0232A834
ov29_0232A834: ; 0x0232A834
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xc0
	mov r5, #0
	mov r4, r2
	mov ip, #3
	mov r2, #1
	strb r2, [sp, #0x28]
	str ip, [sp, #8]
	strb r5, [sp, #0x2c]
	strb r5, [sp, #0x2a]
	str r4, [sp, #0xbc]
	ldrsh lr, [r1, #4]
	ldrsh ip, [r3]
	mov r5, r0
	mov r2, #0x18
	add r0, lr, ip
	strh r0, [sp, #0xc]
	ldrsh ip, [r1, #6]
	ldrsh r3, [r3, #2]
	add r0, sp, #8
	add r3, ip, r3
	strh r3, [sp, #0xe]
	ldrsh r3, [r1, #4]
	ldrsh r1, [r1, #6]
	smulbb r3, r3, r2
	smulbb r1, r1, r2
	add r2, r1, #4
	add r3, r3, #4
	mov r1, r3, lsl #8
	mov r2, r2, lsl #8
	bl ov29_022E1A84
	mov r0, #0
	add r1, sp, #8
	mov r2, r0
	strh r0, [sp, #0x2e]
	bl SubstitutePlaceholderStringTags
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, r5
	mov r2, r4
	add r1, sp, #8
	mov r3, #1
	bl ov29_02345AD8
	add sp, sp, #0xc0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_0232A834

	arm_func_start ov29_0232A8EC
ov29_0232A8EC: ; 0x0232A8EC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov sb, r1
	ldrh r1, [sb, #4]
	mov sl, r0
	mov r8, r2
	strh r1, [sp, #0x24]
	ldrh r4, [sb, #6]
	mov r0, sb
	mov r1, #0xa
	mov r2, #8
	mov r7, r3
	strh r4, [sp, #0x26]
	bl ov29_023049A8
	mov r4, #3
	mov r5, #0
	mov fp, r4
	b _0232A990
_0232A934:
	mov r0, r4
	bl DungeonRandInt
	mov r6, r0
	mov r0, fp
	bl DungeonRandInt
	subs r1, r6, #1
	bne _0232A958
	subs r1, r0, #1
	beq _0232A98C
_0232A958:
	ldrsh r3, [sb, #4]
	sub r1, r6, #1
	sub r2, r0, #1
	add r0, r3, r1
	strh r0, [sp, #0x24]
	ldrsh r3, [sb, #6]
	mov r0, sb
	add r1, sp, #0x24
	add r2, r3, r2
	strh r2, [sp, #0x26]
	bl ov29_022FFB90
	cmp r0, #0
	beq _0232A998
_0232A98C:
	add r5, r5, #1
_0232A990:
	cmp r5, #0x28
	blt _0232A934
_0232A998:
	cmp r5, #0x28
	bne _0232A9B8
	ldr r2, _0232AC38 ; =0x00000EEA
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	b _0232AC30
_0232A9B8:
	ldrsh r2, [sp, #0x24]
	mov r0, #0x18
	ldr r1, [sb, #0xc]
	smulbb r0, r2, r0
	add r0, r0, #0xc
	rsb r0, r1, r0, lsl #8
	mov r1, #0xc
	bl DivideInt
	ldrsh r3, [sp, #0x26]
	mov r1, #0x18
	ldr r2, [sb, #0x10]
	smulbb r1, r3, r1
	add r1, r1, #0x10
	mov r5, r0
	rsb r0, r2, r1, lsl #8
	mov r1, #0xc
	bl DivideInt
	mov r4, r0
	add r0, sb, #4
	bl ov29_022E2CA0
	cmp r0, #0
	bne _0232AA20
	add r0, sp, #0x24
	bl ov29_022E2CA0
	cmp r0, #0
	beq _0232AA4C
_0232AA20:
	mov r6, #0
	mov fp, #0x2c
_0232AA28:
	mov r0, sb
	mov r1, r5
	mov r2, r4
	bl ov29_022E1A90
	mov r0, fp
	bl AdvanceFrame
	add r6, r6, #1
	cmp r6, #0xc
	blt _0232AA28
_0232AA4C:
	ldrsh r0, [sp, #0x24]
	ldrsh r1, [sp, #0x26]
	bl GetTileSafe
	ldr r6, [r0, #0xc]
	cmp r6, #0
	beq _0232ABC8
	ldr r0, [r6]
	cmp r0, #1
	bne _0232AB5C
	ldr r1, _0232AC3C ; =0x00000163
	add r0, sp, #0x1c
	bl InitMove
	add r1, sp, #0x1c
	mov r0, r6
	bl ov29_02324854
	cmp r0, #0
	bne _0232AAD8
	mov r0, r8
	mov r1, r7
	bl ov29_02324E44
	mov r3, #0
	str r3, [sp]
	ldr r1, _0232AC40 ; =0x022C44B4
	str r3, [sp, #4]
	mov r2, #3
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldrsh r2, [r1]
	str r3, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, sl
	mov r1, r6
	str r3, [sp, #0x18]
	bl CalcDamageFixedWrapper
_0232AAD8:
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	bne _0232AC30
	mov r0, sl
	bl EntityIsValid__0232A3D8
	cmp r0, #0
	moveq r0, #1
	beq _0232AC30
	mov r3, #0
	str r3, [sp]
	ldr r0, _0232AC40 ; =0x022C44B4
	mov r1, #3
	str r3, [sp, #4]
	str r1, [sp, #8]
	rsb r1, r1, #0x240
	str r1, [sp, #0xc]
	ldrsh r2, [r0]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, sl
	mov r1, sl
	str r3, [sp, #0x18]
	bl CalcDamageFixedWrapper
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	bne _0232AC30
	mov r0, sl
	bl EntityIsValid__0232A3D8
	cmp r0, #0
	moveq r0, #1
	beq _0232AC30
_0232AB5C:
	mov r0, sb
	bl EntityIsValid__0232A3D8
	cmp r0, #0
	moveq r0, #1
	beq _0232AC30
	add r0, sb, #4
	bl ov29_022E2CA0
	cmp r0, #0
	bne _0232AB90
	add r0, sp, #0x24
	bl ov29_022E2CA0
	cmp r0, #0
	beq _0232ABDC
_0232AB90:
	rsb r6, r4, #0
	rsb r5, r5, #0
	mov r7, #0
	mov r4, #0x2c
_0232ABA0:
	mov r0, sb
	mov r1, r5
	mov r2, r6
	bl ov29_022E1A90
	mov r0, r4
	bl AdvanceFrame
	add r7, r7, #1
	cmp r7, #0xc
	blt _0232ABA0
	b _0232ABDC
_0232ABC8:
	ldrsh r1, [sp, #0x24]
	ldrsh r2, [sp, #0x26]
	mov r0, sb
	mov r3, #0
	bl ov29_022F85F0
_0232ABDC:
	mov r0, sb
	bl EntityIsValid__0232A3D8
	cmp r0, #0
	moveq r0, #1
	beq _0232AC30
	mov r0, sb
	mov r1, #0
	bl ov29_022E1A40
	mov r0, sb
	mov r1, #0xe
	bl AbilityIsActive2
	cmp r0, #0
	bne _0232AC24
	mov r0, sb
	bl ov29_02321260
	mov r0, sl
	mov r1, sb
	bl ov29_02321164
_0232AC24:
	mov r0, sb
	bl ov29_02321260
	mov r0, #1
_0232AC30:
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0232AC38: .word 0x00000EEA
_0232AC3C: .word 0x00000163
_0232AC40: .word 0x022C44B4
	arm_func_end ov29_0232A8EC

	arm_func_start ov29_0232AC44
ov29_0232AC44: ; 0x0232AC44
	stmdb sp!, {r3, lr}
	bl ov29_02315CE8
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232AC44

	arm_func_start ov29_0232AC54
ov29_0232AC54: ; 0x0232AC54
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r5, [r7, #0xb4]
	sub r3, sp, #4
	add r0, r5, #0x100
	ldrh r2, [r0, #0x46]
	mov r6, r1
	mov r4, #0
	strh r2, [r3]
	ldrh r0, [r0, #0x48]
	strh r0, [r3, #2]
	ldr r0, [r3]
	bl CeilFixedPoint
	cmp r0, #1
	ble _0232ACD8
	ldr r1, _0232AD00 ; =0x02352AEC
	mov r0, r7
	ldr r2, [r1]
	mov r1, r6
	mov r3, #0x63
	bl BoostOffensiveStat
	mov r0, #1
	bl sub_02050FF8
	strh r0, [sp]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #2]
	ldrh r2, [sp]
	add r0, r5, #0x100
	ldrh r1, [sp, #2]
	strh r2, [r0, #0x46]
	mov r4, #1
	strh r1, [r0, #0x48]
	b _0232ACF8
_0232ACD8:
	mov r0, r4
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _0232AD04 ; =0x00000EEB
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_0232ACF8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0232AD00: .word 0x02352AEC
_0232AD04: .word 0x00000EEB
	arm_func_end ov29_0232AC54

	arm_func_start ov29_0232AD08
ov29_0232AD08: ; 0x0232AD08
	stmdb sp!, {r3, lr}
	bl ov29_023190EC
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232AD08

	arm_func_start ov29_0232AD18
ov29_0232AD18: ; 0x0232AD18
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232AED0
	ldr r1, _0232AEDC ; =0x022C454C
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232AED0
	ldr r0, _0232AEE0 ; =0x02353538
	mov r1, #0xc
	ldr r0, [r0]
	ldr r2, _0232AEE4 ; =0x022C6321
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	smulbb r0, r0, r1
	ldrb r0, [r2, r0]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0232AEBC
_0232AD8C: ; jump table
	b _0232ADB4 ; case 0
	b _0232ADCC ; case 1
	b _0232ADF4 ; case 2
	b _0232AE0C ; case 3
	b _0232AE34 ; case 4
	b _0232AE5C ; case 5
	b _0232AE78 ; case 6
	b _0232AE90 ; case 7
	b _0232AEA8 ; case 8
	b _0232AEBC ; case 9
_0232ADB4:
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictPoisonedStatus
	b _0232AED0
_0232ADCC:
	ldr r1, _0232AEE8 ; =0x022C4720
	mov r0, r5
	mov r2, r4
	bl CalcStatusDuration
	mov r2, r0
	mov r0, r6
	mov r1, r5
	mov r3, #0
	bl TryInflictSleepStatus
	b _0232AED0
_0232ADF4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl LowerSpeed
	b _0232AED0
_0232AE0C:
	ldr r0, _0232AEEC ; =0x02352AEC
	mov r3, r4
	ldr r2, [r0]
	mov r1, r5
	mov r0, r6
	str r3, [sp]
	mov r5, #0
	str r5, [sp, #4]
	bl LowerOffensiveStat
	b _0232AED0
_0232AE34:
	ldr r0, _0232AEEC ; =0x02352AEC
	mov r3, r4
	ldr r2, [r0]
	mov r1, r5
	mov r0, r6
	str r3, [sp]
	mov r5, #0
	str r5, [sp, #4]
	bl LowerDefensiveStat
	b _0232AED0
_0232AE5C:
	ldr r1, _0232AEEC ; =0x02352AEC
	mov r0, r6
	ldr r2, [r1]
	mov r1, r5
	mov r3, #0
	bl LowerHitChanceStat
	b _0232AED0
_0232AE78:
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictConfusedStatus
	b _0232AED0
_0232AE90:
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictCringeStatus
	b _0232AED0
_0232AEA8:
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl TryInflictFrozenStatus
	b _0232AED0
_0232AEBC:
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictParalysisStatus
_0232AED0:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0232AEDC: .word 0x022C454C
_0232AEE0: .word 0x02353538
_0232AEE4: .word 0x022C6321
_0232AEE8: .word 0x022C4720
_0232AEEC: .word 0x02352AEC
	arm_func_end ov29_0232AD18

	arm_func_start ov29_0232AEF0
ov29_0232AEF0: ; 0x0232AEF0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232AF4C
	ldr r1, _0232AF58 ; =0x022C4548
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232AF4C
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictConfusedStatus
_0232AF4C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0232AF58: .word 0x022C4548
	arm_func_end ov29_0232AEF0

	arm_func_start ov29_0232AF5C
ov29_0232AF5C: ; 0x0232AF5C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0232AF9C ; =0x02352AEC
	mov r3, #1
	ldr r2, [r2]
	mov r5, r0
	mov r4, r1
	str r2, [sp]
	bl BoostOffensiveStat
	add r1, sp, #0
	ldr r2, [r1]
	mov r0, r5
	mov r1, r4
	mov r3, #1
	bl BoostDefensiveStat
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0232AF9C: .word 0x02352AEC
	arm_func_end ov29_0232AF5C

	arm_func_start ov29_0232AFA0
ov29_0232AFA0: ; 0x0232AFA0
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	ldr r1, _0232AFEC ; =0x022C471C
	mov r0, r4
	mov r2, #1
	bl CalcStatusDuration
	mov r2, #1
	mov r3, r0
	mov r0, r5
	mov r1, r4
	str r2, [sp]
	mov ip, #0
	str ip, [sp, #4]
	bl TryInflictPausedStatus
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0232AFEC: .word 0x022C471C
	arm_func_end ov29_0232AFA0

	arm_func_start ov29_0232AFF0
ov29_0232AFF0: ; 0x0232AFF0
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _0232B020 ; =0x02352AEC
	mov ip, #1
	ldr r2, [r2]
	str ip, [sp]
	mov r3, #2
	str ip, [sp, #4]
	bl LowerOffensiveStat
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0232B020: .word 0x02352AEC
	arm_func_end ov29_0232AFF0

	arm_func_start ov29_0232B024
ov29_0232B024: ; 0x0232B024
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r8, [sl, #0xb4]
	mov fp, r1
	ldrb r0, [r8, #6]
	mov r4, #0
	mov r5, #0
	cmp r0, #0
	ldrne r0, _0232B110 ; =0x02353538
	movne r6, #0x10
	ldrne r0, [r0]
	moveq r6, #4
	addne r0, r0, #0x338
	ldreq r0, _0232B110 ; =0x02353538
	ldreq r0, [r0]
	addeq r0, r0, #0x328
	add r7, r0, #0x12800
	b _0232B0E8
_0232B06C:
	ldr sb, [r7, r5, lsl #2]
	mov r0, sb
	bl EntityIsValid__0232A3D8
	cmp r0, #0
	cmpne sl, sb
	beq _0232B0E4
	mov r2, #0
	mov r0, sl
	mov r1, sb
	mov r3, r2
	bl ov29_0230175C
	cmp r0, #0
	bne _0232B0E4
	ldr r0, [sb, #0xb4]
	ldrb r1, [r0, #0xbc]
	cmp r1, #7
	beq _0232B0E4
	bl IsExperienceLocked
	cmp r0, #0
	bne _0232B0E4
	mov r0, sl
	mov r1, sb
	mov r2, #2
	add r3, fp, #4
	bl TryWarp
	ldrb r0, [r8, #0x108]
	mov r4, #1
	cmp r0, #1
	movlo r0, r4
	strlob r0, [r8, #0x108]
_0232B0E4:
	add r5, r5, #1
_0232B0E8:
	cmp r5, r6
	blt _0232B06C
	cmp r4, #0
	bne _0232B108
	ldr r2, _0232B114 ; =0x00000EEC
	mov r0, sl
	mov r1, fp
	bl LogMessageByIdWithPopupCheckUserTarget
_0232B108:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0232B110: .word 0x02353538
_0232B114: .word 0x00000EEC
	arm_func_end ov29_0232B024

	arm_func_start ov29_0232B118
ov29_0232B118: ; 0x0232B118
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
	mov r3, #0x200
	str r5, [sp]
	bl DealDamage
	cmp r0, #0
	movne r4, #1
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov29_0232B118

	arm_func_start ov29_0232B164
ov29_0232B164: ; 0x0232B164
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232B1D0
	ldr r1, _0232B1DC ; =0x022C4608
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232B1D0
	ldr r0, _0232B1E0 ; =0x02352AEC
	mov r3, r4
	ldr r2, [r0]
	mov r0, r6
	mov r1, r5
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	bl LowerDefensiveStat
_0232B1D0:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0232B1DC: .word 0x022C4608
_0232B1E0: .word 0x02352AEC
	arm_func_end ov29_0232B164

	arm_func_start ov29_0232B1E4
ov29_0232B1E4: ; 0x0232B1E4
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
	beq _0232B25C
	ldr r1, _0232B268 ; =0x022C4540
	mov r0, r8
	ldrsh r2, [r1]
	mov r1, r7
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232B25C
	mov r2, #0
	mov r0, r8
	mov r1, r7
	mov r3, r2
	str r2, [sp]
	bl TryInflictBurnStatus
_0232B25C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0232B268: .word 0x022C4540
	arm_func_end ov29_0232B1E4

	arm_func_start ov29_0232B26C
ov29_0232B26C: ; 0x0232B26C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r0, #0x64
	mov r4, r1
	mov r7, r2
	mov r6, r3
	bl DungeonRandInt
	cmp r0, #0xa
	bge _0232B2BC
	mov r0, r5
	mov r1, r4
	mov r2, r7
	mov r3, #0x4b
	str r6, [sp]
	bl ov29_02332F18
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0232B2BC:
	cmp r0, #0x1e
	bge _0232B30C
	ldr r1, [r4, #0xb4]
	ldr r0, _0232B364 ; =0x000003E7
	ldrsh r2, [r1, #0x12]
	ldrsh r1, [r1, #0x16]
	mov ip, #1
	mov r3, #0
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	mov r0, r1, asr #1
	add r2, r1, r0, lsr #30
	mov r0, r5
	mov r1, r4
	mov r2, r2, asr #2
	str ip, [sp]
	bl TryIncreaseHp
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0232B30C:
	cmp r0, #0x3c
	mov r0, r5
	mov r1, r4
	bge _0232B340
	mov r2, r7
	mov r3, #0x32
	str r6, [sp]
	bl ov29_02332F18
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0232B340:
	mov r2, r7
	mov r3, #0x19
	str r6, [sp]
	bl ov29_02332F18
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0232B364: .word 0x000003E7
	arm_func_end ov29_0232B26C

	arm_func_start ov29_0232B368
ov29_0232B368: ; 0x0232B368
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov29_02307C78
	ldr r2, [r7, #0xb4]
	ldr r3, _0232B42C ; =0x000003E7
	ldrsh r1, [r2, #0x12]
	ldrsh r0, [r2, #0x16]
	add r1, r1, r0
	cmp r1, r3
	movle r3, r1
	ldrsh r0, [r2, #0x10]
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	cmp r0, r2, asr #2
	movle r2, #0
	ble _0232B3FC
	ldr r2, _0232B42C ; =0x000003E7
	cmp r1, r2
	movle r2, r1
	mov r3, r2, lsl #1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	cmp r0, r2, asr #2
	movle r2, #1
	ble _0232B3FC
	ldr r2, _0232B42C ; =0x000003E7
	cmp r1, r2
	movgt r1, r2
	add r2, r1, r1, lsl #1
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r0, r1, asr #2
	movle r2, #2
	movgt r2, #3
_0232B3FC:
	ldr r1, _0232B430 ; =0x022C49C4
	mov r0, r7
	ldr r3, [r1, r2, lsl #2]
	mov r1, r6
	mov r2, r5
	str r4, [sp]
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0232B42C: .word 0x000003E7
_0232B430: .word 0x022C49C4
	arm_func_end ov29_0232B368

	arm_func_start ov29_0232B434
ov29_0232B434: ; 0x0232B434
	stmdb sp!, {r3, lr}
	mov r2, #1
	mov r3, #0
	bl TryInflictParalysisStatus
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B434

	arm_func_start ov29_0232B44C
ov29_0232B44C: ; 0x0232B44C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov29_023361D4
	cmp r0, #0
	beq _0232B47C
	ldr r2, _0232B490 ; =0x00000EED
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0232B47C:
	mov r0, r5
	mov r1, r4
	bl ov29_0231721C
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0232B490: .word 0x00000EED
	arm_func_end ov29_0232B44C

	arm_func_start ov29_0232B494
ov29_0232B494: ; 0x0232B494
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232B4F0
	ldr r1, _0232B4FC ; =0x022C448C
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232B4F0
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl TryInflictPoisonedStatus
_0232B4F0:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0232B4FC: .word 0x022C448C
	arm_func_end ov29_0232B494

	arm_func_start ov29_0232B500
ov29_0232B500: ; 0x0232B500
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r2, [r2, #0x4c]
	bl TryBlowAway
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B500

	arm_func_start ov29_0232B518
ov29_0232B518: ; 0x0232B518
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02025888
	ldr r0, _0232B5B8 ; =0x02353538
	mov r2, #0xc
	ldr r0, [r0]
	ldr r3, _0232B5BC ; =0x022C6322
	add r0, r0, #0x4000
	ldrsh ip, [r0, #0xd4]
	mov r0, r4
	mov r1, #0x25
	smulbb r2, ip, r2
	ldr r7, [r4, #0xb4]
	ldrb r6, [r3, r2]
	bl AbilityIsActive2
	cmp r0, #0
	beq _0232B578
	ldr r2, _0232B5C0 ; =0x00000DC3
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0232B578:
	strb r6, [r7, #0x5e]
	mov r2, #0
	mov r1, r4
	strb r2, [r7, #0x5f]
	mov r0, #1
	strb r0, [r7, #0xff]
	bl SubstitutePlaceholderStringTags
	mov r1, r6
	mov r0, #0
	bl ov29_0234B084
	ldr r2, _0232B5C4 ; =0x00000EEE
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0232B5B8: .word 0x02353538
_0232B5BC: .word 0x022C6322
_0232B5C0: .word 0x00000DC3
_0232B5C4: .word 0x00000EEE
	arm_func_end ov29_0232B518

	arm_func_start ov29_0232B5C8
ov29_0232B5C8: ; 0x0232B5C8
	stmdb sp!, {r3, lr}
	ldr r2, _0232B5E4 ; =0x02352AE8
	mov r3, #2
	ldr r2, [r2]
	bl BoostOffensiveStat
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0232B5E4: .word 0x02352AE8
	arm_func_end ov29_0232B5C8

	arm_func_start ov29_0232B5E8
ov29_0232B5E8: ; 0x0232B5E8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r2
	ldrh ip, [r5, #4]
	ldr r2, _0232B69C ; =0x00000123
	mov r7, r0
	cmp ip, r2
	mov r6, r1
	mov r4, r3
	mov r8, #0
	cmpne ip, #0x20c
	bne _0232B628
	mov r0, r7
	mov r1, r6
	bl ov29_02307C78
	mov sb, #0x13c
	b _0232B640
_0232B628:
	cmp ip, #0x45
	moveq sb, #0x75
	beq _0232B640
	cmp ip, #0x7d
	moveq sb, #0x7e
	movne sb, #0xf1
_0232B640:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, #0x100
	str r4, [sp]
	bl DealDamage
	cmp r0, #0
	beq _0232B694
	ldr r1, _0232B6A0 ; =0x022C44A4
	mov r0, r7
	ldrsh r2, [r1]
	mov r1, r6
	mov r8, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232B694
	mov r0, r7
	mov r1, r6
	mov r2, sb
	mov r3, #0
	bl TryInflictConstrictionStatus
_0232B694:
	mov r0, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0232B69C: .word 0x00000123
_0232B6A0: .word 0x022C44A4
	arm_func_end ov29_0232B5E8

	arm_func_start ov29_0232B6A4
ov29_0232B6A4: ; 0x0232B6A4
	stmdb sp!, {r3, lr}
	mov r2, #0
	bl ov29_0231662C
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B6A4

	arm_func_start ov29_0232B6B8
ov29_0232B6B8: ; 0x0232B6B8
	stmdb sp!, {r3, lr}
	bl TryInflictWrappedStatus
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B6B8

	arm_func_start ov29_0232B6C8
ov29_0232B6C8: ; 0x0232B6C8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0xb4]
	mov r6, r1
	ldrb r0, [r0, #6]
	mov r4, #0
	cmp r0, #0
	movne r5, #2
	moveq r5, #1
	bl ov29_022ED868
	cmp r0, #0
	beq _0232B718
	mov r2, r5
	add r0, r7, #4
	mov r1, #0x13
	mov r3, #1
	bl ov29_022EDCBC
	cmp r0, #0
	movne r4, #1
	bne _0232B728
_0232B718:
	ldr r2, _0232B734 ; =0x00000EEF
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_0232B728:
	bl ov29_02336F4C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0232B734: .word 0x00000EEF
	arm_func_end ov29_0232B6C8

	arm_func_start ov29_0232B738
ov29_0232B738: ; 0x0232B738
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _0232B7B0 ; =0x0237CA84
	ldr r5, _0232B7B4 ; =0x02353538
	ldr ip, [r4]
	ldr r6, _0232B7B8 ; =0x02352B1C
	ldr r4, [r5]
	ldr r6, [r6, ip, lsl #2]
	ldr lr, [r1, #0xb4]
	add r4, r4, #0x1a000
	str r6, [r4, #0x234]
	ldr r4, [r5]
	mov r5, #0
	add r4, r4, #0x1a000
	str r5, [r4, #0x238]
	ldrb r4, [lr, #0xd2]
	ldr r5, _0232B7BC ; =0x022C4924
	mov ip, ip, lsl #1
	cmp r4, #0xa
	ldrsh r4, [r5, ip]
	str r3, [sp]
	moveq r4, r4, lsl #1
	mov r3, r4
	bl ov29_02332F18
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0232B7B0: .word 0x0237CA84
_0232B7B4: .word 0x02353538
_0232B7B8: .word 0x02352B1C
_0232B7BC: .word 0x022C4924
	arm_func_end ov29_0232B738

	arm_func_start ov29_0232B7C0
ov29_0232B7C0: ; 0x0232B7C0
	stmdb sp!, {r3, lr}
	bl ov29_0231904C
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B7C0

	arm_func_start ov29_0232B7D0
ov29_0232B7D0: ; 0x0232B7D0
	stmdb sp!, {r3, lr}
	bl ov29_0231922C
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B7D0

	arm_func_start ov29_0232B7E0
ov29_0232B7E0: ; 0x0232B7E0
	stmdb sp!, {r3, lr}
	ldr r2, _0232B7FC ; =0x02352AEC
	mov r3, #1
	ldr r2, [r2]
	bl BoostDefensiveStat
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0232B7FC: .word 0x02352AEC
	arm_func_end ov29_0232B7E0

	arm_func_start ov29_0232B800
ov29_0232B800: ; 0x0232B800
	stmdb sp!, {r3, lr}
	mov r2, #1
	mov ip, #0
	mov r3, r2
	str ip, [sp]
	bl ov29_02315E24
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B800

	arm_func_start ov29_0232B820
ov29_0232B820: ; 0x0232B820
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	str r3, [sp]
	mov r3, #0x100
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232B88C
	ldr r1, _0232B898 ; =0x022C44E0
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r5
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232B88C
	ldr r0, _0232B89C ; =0x02352AE8
	mov r3, r4
	ldr r2, [r0]
	mov r0, r6
	mov r1, r5
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	bl LowerOffensiveStat
_0232B88C:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0232B898: .word 0x022C44E0
_0232B89C: .word 0x02352AE8
	arm_func_end ov29_0232B820

	arm_func_start ov29_0232B8A0
ov29_0232B8A0: ; 0x0232B8A0
	stmdb sp!, {r3, lr}
	bl TryInflictDestinyBond
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B8A0

	arm_func_start ov29_0232B8B0
ov29_0232B8B0: ; 0x0232B8B0
	stmdb sp!, {r3, lr}
	str r3, [sp]
	mov r3, #0x100
	bl DealDamage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B8B0

	arm_func_start ov29_0232B8D4
ov29_0232B8D4: ; 0x0232B8D4
	stmdb sp!, {r3, lr}
	bl ov29_023192DC
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B8D4

	arm_func_start ov29_0232B8E4
ov29_0232B8E4: ; 0x0232B8E4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0232B924 ; =0x02352AE8
	mov r3, #1
	ldr r2, [r2]
	mov r5, r0
	mov r4, r1
	str r2, [sp]
	bl BoostOffensiveStat
	add r1, sp, #0
	ldr r2, [r1]
	mov r0, r5
	mov r1, r4
	mov r3, #1
	bl BoostDefensiveStat
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0232B924: .word 0x02352AE8
	arm_func_end ov29_0232B8E4

	arm_func_start ov29_0232B928
ov29_0232B928: ; 0x0232B928
	stmdb sp!, {r3, lr}
	str r3, [sp]
	mov r3, #0x100
	bl DealDamage
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232B928

	arm_func_start ov29_0232B940
ov29_0232B940: ; 0x0232B940
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr ip, [sp, #0x28]
	mov r3, #0x100
	mov r6, r0
	str ip, [sp]
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232B9B8
	ldr r1, _0232B9CC ; =0x022C4554
	mov r0, r6
	ldrsh r2, [r1]
	mov r1, r6
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232B9B8
	add r0, sp, #0x24
	ldr r2, [r0]
	ldr r5, [r6, #0xb4]
	mov r0, r6
	mov r1, r6
	mov r3, r4
	bl BoostOffensiveStat
	ldrb r0, [r5, #0x108]
	cmp r0, #1
	movlo r0, r4
	strlob r0, [r5, #0x108]
_0232B9B8:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0232B9CC: .word 0x022C4554
	arm_func_end ov29_0232B940

	arm_func_start ov29_0232B9D0
ov29_0232B9D0: ; 0x0232B9D0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, [r6, #0xb4]
	ldr r1, [r5, #0xb4]
	ldrsh r0, [r0, #2]
	ldrsh r1, [r1, #2]
	mov r4, #0
	bl sub_02054EC8
	cmp r0, #0
	beq _0232BA14
	mov r4, #1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl TryInflictInfatuatedStatus
_0232BA14:
	cmp r4, #0
	bne _0232BA3C
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, r6
	mov r1, r5
	mov r2, #0xf10
	bl LogMessageByIdWithPopupCheckUserTarget
_0232BA3C:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_0232B9D0

	arm_func_start ov29_0232BA44
ov29_0232BA44: ; 0x0232BA44
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, r1
	ldr r0, [r0, #0xb4]
	mov r7, #0
	add r4, r0, #0x124
	ldr r0, _0232BB44 ; =0x0000020D
	ldr sb, [sl, #0xb4]
	str r1, [sp]
	mov r6, r7
	mov r5, r7
	sub fp, r0, #0xc6
_0232BA74:
	ldrb r0, [r4, r5, lsl #3]
	add r8, r4, r5, lsl #3
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0232BAE0
	ldrh r1, [r8, #4]
	mov r0, sl
	bl ov29_02324D60
	cmp r0, #0
	bne _0232BAE0
	ldrh r1, [r8, #4]
	cmp r1, fp
	cmpne r1, #0xe5
	cmpne r1, #0x8a
	cmpne r1, #0x28
	cmpne r1, #0x11
	ldrne r0, _0232BB44 ; =0x0000020D
	cmpne r1, r0
	beq _0232BAE0
	ldrb r0, [r8]
	tst r0, #0x10
	addne r0, sb, r6, lsl #1
	addne r0, r0, #0x100
	strneh r1, [r0, #0x94]
	addne r6, r6, #1
_0232BAE0:
	add r5, r5, #1
	cmp r5, #4
	blt _0232BA74
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r6, #0
	beq _0232BB2C
	ldrb r0, [sb, #0x108]
	ldr r1, [sp]
	mov r2, #0xef0
	cmp r0, #1
	movlo r0, #1
	strlob r0, [sb, #0x108]
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r7, #1
	b _0232BB3C
_0232BB2C:
	ldr r2, _0232BB48 ; =0x00000EF1
	ldr r1, [sp]
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUserTarget
_0232BB3C:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0232BB44: .word 0x0000020D
_0232BB48: .word 0x00000EF1
	arm_func_end ov29_0232BA44

	arm_func_start ov29_0232BB4C
ov29_0232BB4C: ; 0x0232BB4C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x20
	mov r7, #0
	mov r6, r0
	strb r7, [sp, #0x1c]
	mov sl, r3
	mov r5, r1
	mov r4, r2
	ldr ip, [r6, #0xb4]
	mov sb, #1
	ldr r3, _0232BC28 ; =0x022C4C3C
	ldr r0, _0232BC2C ; =0x000003E7
	b _0232BBA8
_0232BB80:
	mov r8, r7, lsl #2
	ldrsh r2, [r3, r8]
	cmp r2, #0
	blt _0232BBB0
	ldrsh r1, [ip, #0xe]
	cmp r1, r2
	ldrlt r0, _0232BC30 ; =0x022C4C3E
	ldrltsh sb, [r0, r8]
	blt _0232BBB0
	add r7, r7, #1
_0232BBA8:
	cmp r7, r0
	blt _0232BB80
_0232BBB0:
	mov r0, r4
	bl GetMoveType
	mov r8, r0
	ldrh r0, [r4, #4]
	bl GetMoveCategory
	mov r7, r0
	mov r1, sl
	mov r0, r4
	bl ov29_02324E44
	add r3, sp, #0x1c
	stmia sp, {r3, r8}
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	mov r3, #1
	str r3, [sp, #0x14]
	mov r1, r5
	mov r2, sb
	mov r0, r6
	str r4, [sp, #0x18]
	bl CalcDamageFixedWrapper
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	moveq r0, #1
	movne r0, r4
	strb r0, [sp, #0x1c]
	and r0, r0, #0xff
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0232BC28: .word 0x022C4C3C
_0232BC2C: .word 0x000003E7
_0232BC30: .word 0x022C4C3E
	arm_func_end ov29_0232BB4C

	arm_func_start ov29_0232BC34
ov29_0232BC34: ; 0x0232BC34
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #1
	mov r3, #0
	bl TryInflictLeechSeedStatus
	ldr r1, [r4, #0xb4]
	ldrb r0, [r1, #0x108]
	cmp r0, #1
	movlo r0, #1
	strlob r0, [r1, #0x108]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov29_0232BC34

	arm_func_start ov29_0232BC64
ov29_0232BC64: ; 0x0232BC64
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r2, _0232BCB8 ; =0x0237CA88
	mov r5, r0
	ldr r6, [r2]
	ldr r0, _0232BCBC ; =0x022C5DDC
	mov r2, r6, lsl #3
	mov r4, r1
	ldrh r1, [r0, r2]
	add r0, sp, #0
	mov r7, r3
	bl InitMove
	ldr r0, _0232BCC0 ; =0x022C5DE0
	add r2, sp, #0
	ldr ip, [r0, r6, lsl #3]
	mov r0, r5
	mov r1, r4
	mov r3, r7
	blx ip
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0232BCB8: .word 0x0237CA88
_0232BCBC: .word 0x022C5DDC
_0232BCC0: .word 0x022C5DE0
	arm_func_end ov29_0232BC64

	arm_func_start ov29_0232BCC4
ov29_0232BCC4: ; 0x0232BCC4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r2
	mov r6, r3
	mov sb, r1
	mov r2, #0x3a
	mov r3, #1
	mov r7, r0
	mov r4, #0
	bl DefenderAbilityIsActive__0232BDD0
	mov r5, r0
	mov r0, sb
	bl ov29_023007A8
	cmp r0, #0
	beq _0232BDB4
	mov r0, #1
	bl ov29_022E38E0
	mov r0, r7
	mov r1, sb
	mov r2, r8
	mov r3, #0x100
	str r6, [sp]
	bl DealDamage
	cmp r0, #0
	beq _0232BDC4
	add r0, r0, r0, lsr #31
	mov r6, r0, asr #1
	mov r4, #1
	cmp r6, #1
	mov r0, r7
	mov r1, #0
	movlt r6, r4
	bl DungeonRandOutcomeUserAction
	cmp r0, #0
	beq _0232BDC4
	ldr r1, [r7, #0xb4]
	ldrb r0, [r1, #0x108]
	cmp r0, #1
	movlo r0, #1
	strlob r0, [r1, #0x108]
	mov r0, r7
	mov r1, #0
	bl DungeonRandOutcomeUserAction
	cmp r0, #0
	beq _0232BDC4
	cmp r5, #0
	beq _0232BD94
	mov r2, #0xd
	mov r0, r7
	mov r1, r6
	add r3, r2, #0x22c
	bl ov29_0230D11C
	b _0232BDC4
_0232BD94:
	mov r5, #1
	mov r0, r7
	mov r1, r7
	mov r2, r6
	mov r3, #0
	str r5, [sp]
	bl TryIncreaseHp
	b _0232BDC4
_0232BDB4:
	ldr r2, _0232BDCC ; =0x00000EF2
	mov r0, r7
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_0232BDC4:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0232BDCC: .word 0x00000EF2
	arm_func_end ov29_0232BCC4

	arm_func_start DefenderAbilityIsActive__0232BDD0
DefenderAbilityIsActive__0232BDD0: ; 0x0232BDD0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	cmp r0, r5
	beq _0232BE24
	cmp r0, #0
	moveq r1, #0
	beq _0232BE04
	ldr r1, [r0]
	cmp r1, #1
	moveq r1, #1
	movne r1, #0
	and r1, r1, #0xff
_0232BE04:
	cmp r1, #0
	cmpne r3, #0
	beq _0232BE24
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
_0232BE24:
	mov r0, r5
	mov r1, r4
	bl AbilityIsActive2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DefenderAbilityIsActive__0232BDD0

	arm_func_start ov29_0232BE34
ov29_0232BE34: ; 0x0232BE34
	stmdb sp!, {r3, lr}
	bl ov29_02316280
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232BE34

	arm_func_start ov29_0232BE44
ov29_0232BE44: ; 0x0232BE44
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, r1
	ldr r1, [r5, #0xb4]
	mov r6, r0
	ldrb r0, [r1, #6]
	mov sb, #0
	cmp r0, #0
	bne _0232BF34
	ldr r7, _0232BF68 ; =0x02353538
	ldr r8, _0232BF6C ; =0x020AF6B8
	mov sl, sb
	mov fp, #6
_0232BE74:
	mul r4, sl, fp
	ldr r0, [r8]
	ldr r0, [r0, #0x384]
	ldrb r1, [r0, r4]
	add r2, r0, r4
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _0232BF28
	ldrb r1, [r2]
	tst r1, #2
	ldreqsh r1, [r2, #4]
	cmpeq r1, #0xbb
	bne _0232BF28
	ldrh r1, [r2, #2]
	add r1, r1, #0xbc
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	cmp r1, #0xfe
	beq _0232BF28
	add r0, r0, r4
	mov r2, #0
	ldrb sb, [r0, #1]
	bl InitStandardItem
	ldr r0, [r8]
	cmp sb, #0
	ldr r0, [r0, #0x384]
	add r0, r0, r4
	strb sb, [r0, #1]
	beq _0232BF24
	ldr r1, [r8]
	ldr r2, [r7]
	add r0, sb, sb, lsl #3
	add r0, r2, r0, lsl #6
	ldr r2, [r1, #0x384]
	add r0, r0, #0x600
	ldrh r1, [r2, r4]
	add r2, r2, r4
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #2]
	strh r1, [r0, #0x18]
	ldrh r1, [r2, #4]
	strh r1, [r0, #0x1a]
_0232BF24:
	mov sb, #1
_0232BF28:
	add sl, sl, #1
	cmp sl, #0x32
	blt _0232BE74
_0232BF34:
	cmp sb, #0
	beq _0232BF50
	ldr r2, _0232BF70 ; =0x00000EF3
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _0232BF60
_0232BF50:
	ldr r2, _0232BF74 ; =0x00000EF4
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_0232BF60:
	mov r0, sb
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0232BF68: .word 0x02353538
_0232BF6C: .word 0x020AF6B8
_0232BF70: .word 0x00000EF3
_0232BF74: .word 0x00000EF4
	arm_func_end ov29_0232BE44

	arm_func_start ov29_0232BF78
ov29_0232BF78: ; 0x0232BF78
	stmdb sp!, {r3, lr}
	bl ov29_0231918C
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232BF78

	arm_func_start ov29_0232BF88
ov29_0232BF88: ; 0x0232BF88
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r5, #0
	strb r5, [sp, #0x1c]
	mov r7, r2
	mov r4, r0
	mov r0, r7
	mov r8, r1
	mov r5, r3
	bl GetMoveType
	mov r6, r0
	ldrh r0, [r7, #4]
	bl GetMoveCategory
	mov r1, r5
	mov r5, r0
	mov r0, r7
	bl ov29_02324E44
	add r3, sp, #0x1c
	stmia sp, {r3, r6}
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x10]
	mov r3, #1
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, _0232C024 ; =0x022C46D4
	mov r1, r8
	ldrsh r2, [r2]
	mov r0, r4
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
_0232C024: .word 0x022C46D4
	arm_func_end ov29_0232BF88

	arm_func_start ov29_0232C028
ov29_0232C028: ; 0x0232C028
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0232C060 ; =0x02352AEC
	mov r5, r0
	ldr r2, [r2]
	mov r4, r1
	mov r3, #1
	bl BoostOffensiveStat
	mov r0, r5
	mov r1, r4
	mov r2, #0
	mov r3, #1
	bl BoostSpeedOneStage
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0232C060: .word 0x02352AEC
	arm_func_end ov29_0232C028

	arm_func_start ov29_0232C064
ov29_0232C064: ; 0x0232C064
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r6, r1
	mov r1, r5
	mov r7, r0
	mov r4, r3
	bl ov29_023245A4
	cmp r0, #0
	beq _0232C0C0
	ldr r1, _0232C0EC ; =0x022C48BC
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
	b _0232C0E4
_0232C0C0:
	ldr r0, _0232C0F0 ; =0x00000CEB
	bl StringFromMessageId
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r3, r5
	mov r2, #6
	bl ov29_02318BBC
	mov r4, #1
_0232C0E4:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0232C0EC: .word 0x022C48BC
_0232C0F0: .word 0x00000CEB
	arm_func_end ov29_0232C064

	arm_func_start ov29_0232C0F4
ov29_0232C0F4: ; 0x0232C0F4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r2
	ldrh ip, [r8, #4]
	ldr r2, _0232C198 ; =0x0000014F
	mov r5, r0
	mov r4, r1
	mov r7, r3
	cmp ip, r2
	mov r6, #0
	bne _0232C128
	mov r0, #1
	bl ov29_022E38E0
_0232C128:
	mov r0, r5
	mov r1, r4
	mov r2, r8
	mov r3, #0x100
	str r7, [sp]
	bl DealDamage
	cmp r0, #0
	beq _0232C18C
	ldr r1, _0232C19C ; =0x022C450C
	mov r0, r5
	ldrsh r2, [r1]
	mov r1, r4
	mov r6, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232C18C
	ldr r0, _0232C1A0 ; =0x02352AE8
	mov r3, r6
	ldr r2, [r0]
	mov r1, r4
	mov r0, r5
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl LowerDefensiveStat
_0232C18C:
	mov r0, r6
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0232C198: .word 0x0000014F
_0232C19C: .word 0x022C450C
_0232C1A0: .word 0x02352AE8
	arm_func_end ov29_0232C0F4

	arm_func_start ov29_0232C1A4
ov29_0232C1A4: ; 0x0232C1A4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	str r3, [sp]
	mov r3, #0x100
	mov r7, r0
	mov r6, r2
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232C26C
	mov r1, r4
	mov r0, r7
	mov r4, #1
	bl DungeonRandOutcomeUserAction
	cmp r0, #0
	beq _0232C26C
	ldr r1, [r7, #0xb4]
	ldr r0, _0232C278 ; =0x000003E7
	ldrsh r2, [r1, #0x12]
	ldrsh r1, [r1, #0x16]
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r5, r0, asr #2
	ldr r0, [r7, #0xb4]
	cmp r5, #1
	ldrsh r0, [r0, #0x10]
	movlt r5, #1
	cmp r0, #0
	moveq r0, #1
	beq _0232C270
	ldrh r0, [r6, #4]
	bl GetMoveCategory
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x23c
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, r7
	mov r1, r7
	mov r2, r5
	str r3, [sp, #0x18]
	bl CalcDamageFixedWrapper
_0232C26C:
	mov r0, r4
_0232C270:
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0232C278: .word 0x000003E7
	arm_func_end ov29_0232C1A4

	arm_func_start ov29_0232C27C
ov29_0232C27C: ; 0x0232C27C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	add r0, sp, #0
	mov r5, r1
	mov r4, #0
	bl ov29_022F8FF8
	cmp r0, #0
	beq _0232C2B4
	ldr r2, _0232C2F4 ; =0x00000EF5
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _0232C2E8
_0232C2B4:
	add r0, sp, #0
	bl ov29_02337B9C
	movs r4, r0
	beq _0232C2D8
	ldr r2, _0232C2F8 ; =0x00000EF6
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _0232C2E8
_0232C2D8:
	ldr r2, _0232C2FC ; =0x00000EF7
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_0232C2E8:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0232C2F4: .word 0x00000EF5
_0232C2F8: .word 0x00000EF6
_0232C2FC: .word 0x00000EF7
	arm_func_end ov29_0232C27C

	arm_func_start ov29_0232C300
ov29_0232C300: ; 0x0232C300
	stmdb sp!, {r3, lr}
	bl ov29_022EF5D8
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_0232C300

	arm_func_start ov29_0232C310
ov29_0232C310: ; 0x0232C310
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, #0x100
	mov r8, r0
	mov r7, r1
	mov r4, #0
	bl DealDamage
	cmp r0, #0
	beq _0232C4DC
	mov r2, r4
	mov r0, r8
	mov r1, r7
	mov r4, #1
	bl DungeonRandOutcomeUserTargetInteraction
	cmp r0, #0
	beq _0232C4BC
	mov r0, #0
	mov r1, r8
	mov r2, r0
	ldr r5, [r8, #0xb4]
	ldr r6, [r7, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, r7
	mov r0, r4
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	mov r1, r7
	mov r2, #0x2c
	mov r3, r4
	bl DefenderAbilityIsActive__0232BDD0
	cmp r0, #0
	beq _0232C3B0
	ldr r2, _0232C4E8 ; =0x00000EFE
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r4
	b _0232C4E0
_0232C3B0:
	ldrb r0, [r5, #0x62]
	tst r0, #1
	movne r0, r4
	moveq r0, #0
	tst r0, #0xff
	beq _0232C3E0
	ldr r2, _0232C4EC ; =0x00000EFA
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #1
	b _0232C4E0
_0232C3E0:
	ldrb r0, [r6, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _0232C410
	ldr r2, _0232C4F0 ; =0x00000EFB
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #1
	b _0232C4E0
_0232C410:
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0232C440
	bl IsBagFull
	cmp r0, #0
	beq _0232C440
	ldr r2, _0232C4F4 ; =0x00000EFC
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #1
	b _0232C4E0
_0232C440:
	ldrh r0, [r6, #0x62]
	strh r0, [r5, #0x62]
	ldrh r0, [r6, #0x64]
	strh r0, [r5, #0x64]
	ldrh r0, [r6, #0x66]
	strh r0, [r5, #0x66]
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0232C46C
	mov r0, r5
	bl ov29_02346F14
_0232C46C:
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0232C480
	add r0, r6, #0x62
	bl RemoveEquivItem
_0232C480:
	add r0, r6, #0x62
	bl ItemZInit
	mov r0, r8
	bl ov29_022F9EA0
	mov r0, r7
	bl ov29_022F9EA0
	ldrb r0, [r5, #0x108]
	ldr r2, _0232C4F8 ; =0x00000EF9
	mov r1, r7
	cmp r0, #1
	movlo r0, #1
	strlob r0, [r5, #0x108]
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	b _0232C4DC
_0232C4BC:
	mov r0, r7
	bl EntityIsValid__0232C500
	cmp r0, #0
	beq _0232C4DC
	ldr r2, _0232C4FC ; =0x00000EFD
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_0232C4DC:
	mov r0, r4
_0232C4E0:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0232C4E8: .word 0x00000EFE
_0232C4EC: .word 0x00000EFA
_0232C4F0: .word 0x00000EFB
_0232C4F4: .word 0x00000EFC
_0232C4F8: .word 0x00000EF9
_0232C4FC: .word 0x00000EFD
	arm_func_end ov29_0232C310
