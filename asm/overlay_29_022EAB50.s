	.include "asm/macros.inc"
	.include "overlay_29_022EAB50.inc"

	.text

	arm_func_start CalcStatusDuration
CalcStatusDuration: ; 0x022EAB80
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrsh r0, [r1]
	ldrsh r1, [r1, #2]
	mov r6, r2
	bl DungeonRandRange
	mov r5, r0
	cmp r4, #0
	moveq r0, #0
	beq _022EABBC
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_022EABBC:
	cmp r0, #0
	beq _022EAC24
	ldr r0, [r4]
	cmp r0, #1
	bne _022EAC24
	cmp r6, #0
	beq _022EAC24
	mov r0, r4
	mov r1, #0x12
	bl IqSkillIsEnabled
	cmp r0, #0
	cmpne r5, #0x7f
	beq _022EAC04
	mov r0, r5, lsl #8
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	bl RoundUpDiv256
	mov r5, r0
_022EAC04:
	mov r0, r4
	mov r1, #0x14
	bl AbilityIsActive2
	cmp r0, #0
	cmpne r5, #0x7f
	beq _022EAC24
	cmp r5, #5
	movge r5, #5
_022EAC24:
	cmp r5, #1
	movlt r5, #1
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end CalcStatusDuration

	arm_func_start DungeonRngUnsetSecondary
DungeonRngUnsetSecondary: ; 0x022EAC34
	ldr r0, _022EAC48 ; =0x02353570
	mov r1, #0
	strb r1, [r0]
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
_022EAC48: .word 0x02353570
	arm_func_end DungeonRngUnsetSecondary

	arm_func_start DungeonRngSetSecondary
DungeonRngSetSecondary: ; 0x022EAC4C
	ldr r1, _022EAC60 ; =0x02353570
	mov r2, #1
	strb r2, [r1]
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_022EAC60: .word 0x02353570
	arm_func_end DungeonRngSetSecondary

	arm_func_start DungeonRngSetPrimary
DungeonRngSetPrimary: ; 0x022EAC64
	ldr r0, _022EAC74 ; =0x02353570
	mov r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_022EAC74: .word 0x02353570
	arm_func_end DungeonRngSetPrimary

	arm_func_start ov29_022EAC78
ov29_022EAC78: ; 0x022EAC78
	bx lr
	arm_func_end ov29_022EAC78

	arm_func_start ov29_022EAC7C
ov29_022EAC7C: ; 0x022EAC7C
	ldr ip, _022EAC88 ; =sub_02017C50
	mov r0, #1
	bx ip
	.align 2, 0
_022EAC88: .word sub_02017C50
	arm_func_end ov29_022EAC7C

	arm_func_start ov29_022EAC8C
ov29_022EAC8C: ; 0x022EAC8C
	ldr ip, _022EAC98 ; =sub_02017C50
	mov r0, #7
	bx ip
	.align 2, 0
_022EAC98: .word sub_02017C50
	arm_func_end ov29_022EAC8C

	arm_func_start ov29_022EAC9C
ov29_022EAC9C: ; 0x022EAC9C
	ldr ip, _022EACA8 ; =sub_02017C50
	mov r0, #0
	bx ip
	.align 2, 0
_022EACA8: .word sub_02017C50
	arm_func_end ov29_022EAC9C

	arm_func_start ov29_022EACAC
ov29_022EACAC: ; 0x022EACAC
	ldr ip, _022EACB8 ; =sub_02017C50
	mov r0, #5
	bx ip
	.align 2, 0
_022EACB8: .word sub_02017C50
	arm_func_end ov29_022EACAC

	arm_func_start ov29_022EACBC
ov29_022EACBC: ; 0x022EACBC
	ldr ip, _022EACC8 ; =sub_02017C50
	mov r0, #7
	bx ip
	.align 2, 0
_022EACC8: .word sub_02017C50
	arm_func_end ov29_022EACBC

	arm_func_start ov29_022EACCC
ov29_022EACCC: ; 0x022EACCC
	stmdb sp!, {r3, lr}
	cmp r0, #0x3f00
	ldmeqia sp!, {r3, pc}
	mov r1, #0x100
	bl sub_02017C74
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022EACCC

	arm_func_start ov29_022EACE4
ov29_022EACE4: ; 0x022EACE4
	stmdb sp!, {r3, lr}
	ldr r1, _022EACFC ; =0x000003E6
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl sub_02017C50
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EACFC: .word 0x000003E6
	arm_func_end ov29_022EACE4

	arm_func_start ov29_022EAD00
ov29_022EAD00: ; 0x022EAD00
	stmdb sp!, {r4, lr}
	mov r1, #0xaa
	bl DivideInt
	ldr r0, _022EAD5C ; =0x022C555C
	mov r1, r1, lsl #1
	ldrh r4, [r0, r1]
	tst r4, #0x8000
	ldreq r0, _022EAD60 ; =0x00007FFF
	andeq r0, r4, r0
	moveq r0, r0, lsl #0x10
	moveq r0, r0, lsr #0x10
	ldmeqia sp!, {r4, pc}
	mov r0, #4
	bl DungeonRandInt
	ldr r1, _022EAD60 ; =0x00007FFF
	mov r0, r0, lsl #0x10
	and r1, r4, r1
	ldr r3, _022EAD64 ; =0x022C51FC
	mov r1, r1, lsl #0x10
	mov r2, r0, asr #0xf
	add r0, r3, r1, lsr #13
	ldrh r0, [r2, r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EAD5C: .word 0x022C555C
_022EAD60: .word 0x00007FFF
_022EAD64: .word 0x022C51FC
	arm_func_end ov29_022EAD00

	arm_func_start ov29_022EAD68
ov29_022EAD68: ; 0x022EAD68
	stmdb sp!, {r4, r5, r6, lr}
	bl ov29_022E0880
	cmp r0, #0
	beq _022EADAC
	mov r6, #0
	ldr r5, _022EAE08 ; =0x00001410
	mov r4, #0x66
	b _022EADA4
_022EAD88:
	mov r0, r5
	bl sub_02017C68
	cmp r0, #0
	beq _022EADAC
	mov r0, r4
	bl AdvanceFrame
	add r6, r6, #1
_022EADA4:
	cmp r6, #0x1f4
	blt _022EAD88
_022EADAC:
	ldr r0, _022EAE0C ; =0x02353538
	mov r1, #0xc
	ldr r0, [r0]
	ldr r2, _022EAE10 ; =0x022C6C70
	add r0, r0, #0x4000
	ldrb r3, [r0, #0xda]
	smulbb r1, r3, r1
	ldr r1, [r2, r1]
	cmp r1, #0
	ldreqsh r1, [r0, #0xd6]
	strneh r1, [r0, #0xd6]
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov29_022EAD00
	mov r4, r0
	bl sub_02017B18
	cmp r0, #0
	mov r0, r4
	bne _022EAE00
	bl ov29_022EAE14
	ldmia sp!, {r4, r5, r6, pc}
_022EAE00:
	bl ov29_022EAE40
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022EAE08: .word 0x00001410
_022EAE0C: .word 0x02353538
_022EAE10: .word 0x022C6C70
	arm_func_end ov29_022EAD68

	arm_func_start ov29_022EAE14
ov29_022EAE14: ; 0x022EAE14
	ldr r3, _022EAE38 ; =0x02353538
	ldr r1, _022EAE3C ; =0x0002CB06
	ldr ip, [r3]
	sub r2, r1, #6
	strh r0, [ip, r1]
	ldr r0, [r3]
	mov r1, #0
	strh r1, [r0, r2]
	bx lr
	.align 2, 0
_022EAE38: .word 0x02353538
_022EAE3C: .word 0x0002CB06
	arm_func_end ov29_022EAE14

	arm_func_start ov29_022EAE40
ov29_022EAE40: ; 0x022EAE40
	stmdb sp!, {r4, lr}
	ldr lr, _022EAEA0 ; =0x02353538
	ldr r2, _022EAEA4 ; =0x0002CB02
	ldr r4, [lr]
	ldr r1, _022EAEA8 ; =0x000003E7
	add r3, r2, #4
	strh r1, [r4, r2]
	ldr r4, [lr]
	add ip, r2, #2
	strh r0, [r4, r3]
	ldr r4, [lr]
	mov r3, #4
	strh r0, [r4, ip]
	ldr r0, [lr]
	sub r2, r2, #2
	add r0, r0, #0x2c000
	str r3, [r0, #0xaf8]
	ldr r0, [lr]
	mov r3, #0
	strh r3, [r0, r2]
	ldr r0, [lr]
	add r0, r0, #0x700
	strh r1, [r0, #0x96]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EAEA0: .word 0x02353538
_022EAEA4: .word 0x0002CB02
_022EAEA8: .word 0x000003E7
	arm_func_end ov29_022EAE40

	arm_func_start ov29_022EAEAC
ov29_022EAEAC: ; 0x022EAEAC
	stmdb sp!, {r3, lr}
	bl sub_02017ACC
	ldr r0, _022EAEE4 ; =0x0002CB02
	ldr r2, _022EAEE8 ; =0x02353538
	ldr ip, _022EAEEC ; =0x000003E7
	ldr r3, [r2]
	add r1, r0, #2
	strh ip, [r3, r0]
	ldr r3, [r2]
	add r0, r0, #4
	strh ip, [r3, r1]
	ldr r1, [r2]
	strh ip, [r1, r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EAEE4: .word 0x0002CB02
_022EAEE8: .word 0x02353538
_022EAEEC: .word 0x000003E7
	arm_func_end ov29_022EAEAC

	arm_func_start ov29_022EAEF0
ov29_022EAEF0: ; 0x022EAEF0
	ldr ip, _022EAEF8 ; =sub_02017D80
	bx ip
	.align 2, 0
_022EAEF8: .word sub_02017D80
	arm_func_end ov29_022EAEF0

	arm_func_start ov29_022EAEFC
ov29_022EAEFC: ; 0x022EAEFC
	ldr r0, _022EAF1C ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x792]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022EAF1C: .word 0x02353538
	arm_func_end ov29_022EAEFC

	arm_func_start ov29_022EAF20
ov29_022EAF20: ; 0x022EAF20
	ldr r0, _022EAF30 ; =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x792]
	bx lr
	.align 2, 0
_022EAF30: .word 0x02353538
	arm_func_end ov29_022EAF20

	arm_func_start ov29_022EAF34
ov29_022EAF34: ; 0x022EAF34
	ldr r1, _022EAF44 ; =0x02353538
	ldr r1, [r1]
	strb r0, [r1, #0x792]
	bx lr
	.align 2, 0
_022EAF44: .word 0x02353538
	arm_func_end ov29_022EAF34

	arm_func_start ov29_022EAF48
ov29_022EAF48: ; 0x022EAF48
	stmdb sp!, {r4, lr}
	ldr ip, _022EAFA8 ; =0x02353538
	mov r4, #0
	ldr r3, [ip]
	ldr lr, _022EAFAC ; =0x000003E7
	add r2, r3, #0x2f8
	add r3, r3, #0x2c000
	str r4, [r3, #0xaf8]
	add r3, r2, #0x2c800
	str r4, [r3, #4]
	ldr r2, [ip]
	cmp r1, #0
	add r1, r2, #0x700
	strh lr, [r1, #0x96]
	bne _022EAF8C
	cmp r0, lr
	bne _022EAFA0
_022EAF8C:
	ldr r0, _022EAFAC ; =0x000003E7
	strh r0, [r3, #0xa]
	strh r0, [r3, #0xc]
	strh r0, [r3, #0xe]
	ldmia sp!, {r4, pc}
_022EAFA0:
	bl ov29_022EAE40
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EAFA8: .word 0x02353538
_022EAFAC: .word 0x000003E7
	arm_func_end ov29_022EAF48

	arm_func_start ov29_022EAFB0
ov29_022EAFB0: ; 0x022EAFB0
	stmdb sp!, {r4, lr}
	ldr r0, _022EB168 ; =0x02353538
	ldr r3, [r0]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	add r0, r3, #0x700
	ldrh r0, [r0, #0x96]
	ldr r2, _022EB16C ; =0x000003E7
	add r1, r3, #0x2f8
	cmp r0, r2
	add r4, r1, #0x2c800
	bne _022EB034
	ldrb r1, [r3, #0x792]
	cmp r1, #0
	beq _022EB004
	ldr r0, _022EB170 ; =0x023516E8
	ldr r0, [r0, r1, lsl #2]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl ov29_022EAD00
	b _022EB034
_022EB004:
	ldrb r0, [r3, #0x791]
	cmp r0, #0
	movne r0, #0xd
	bne _022EB034
	ldrb r0, [r3, #0x794]
	cmp r0, #0
	movne r0, #0xb
	bne _022EB034
	ldrb r0, [r3, #0x7c9]
	cmp r0, #0
	movne r0, #0xc
	ldreqh r0, [r4, #0xe]
_022EB034:
	ldr r1, [r4]
	cmp r1, #4
	bne _022EB058
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	movne r1, #2
	strne r1, [r4]
	strneh r0, [r4, #0xa]
	b _022EB078
_022EB058:
	ldr r1, _022EB16C ; =0x000003E7
	cmp r0, r1
	beq _022EB078
	ldrh r2, [r4, #0xa]
	cmp r2, r1
	moveq r1, #1
	streq r1, [r4]
	streqh r0, [r4, #0xa]
_022EB078:
	ldr r0, [r4]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_022EB088: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _022EB09C ; case 1
	b _022EB108 ; case 2
	b _022EB124 ; case 3
	ldmia sp!, {r4, pc} ; case 4
_022EB09C:
	ldrh r2, [r4, #0xa]
	ldr r0, _022EB16C ; =0x000003E7
	cmp r2, r0
	moveq r0, #0
	streq r0, [r4]
	beq _022EB0FC
	tst r2, #0x8000
	ldr r0, _022EB174 ; =0x00007FFF
	beq _022EB0D4
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl sub_02017B58
	b _022EB0EC
_022EB0D4:
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	ldrh r1, [r4, #8]
	mov r0, r0, lsr #0x10
	mov r2, #0x100
	bl sub_02017B64
_022EB0EC:
	ldrh r1, [r4, #0xa]
	mov r0, #4
	strh r1, [r4, #0xc]
	str r0, [r4]
_022EB0FC:
	ldr r0, _022EB16C ; =0x000003E7
	strh r0, [r4, #0xa]
	ldmia sp!, {r4, pc}
_022EB108:
	mov r0, #0x1e
	bl sub_02017B7C
	mov r0, #0x1e
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4]
	ldmia sp!, {r4, pc}
_022EB124:
	ldr r0, [r4, #4]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r4, #4]
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r1, [r4, #0xa]
	ldr r0, _022EB16C ; =0x000003E7
	cmp r1, r0
	movne r0, #1
	strne r0, [r4]
	ldmneia sp!, {r4, pc}
	bl sub_02017B70
	mov r0, #0
	str r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EB168: .word 0x02353538
_022EB16C: .word 0x000003E7
_022EB170: .word 0x023516E8
_022EB174: .word 0x00007FFF
	arm_func_end ov29_022EAFB0

	arm_func_start TrySwitchPlace
TrySwitchPlace: ; 0x022EB178
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r1, #0xe
	mov r5, r0
	bl AbilityIsActive2
	cmp r0, #0
	beq _022EB1BC
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _022EB2C4 ; =0x00000B76
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EB2BC
_022EB1BC:
	cmp r5, r4
	beq _022EB204
	cmp r5, #0
	moveq r0, #0
	beq _022EB1E4
	ldr r0, [r5]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
_022EB1E4:
	cmp r0, #0
	beq _022EB204
	mov r0, r5
	mov r1, #0x53
	bl AbilityIsActive2
	cmp r0, #0
	movne r0, #0
	bne _022EB210
_022EB204:
	mov r0, r4
	mov r1, #0xe
	bl AbilityIsActive2
_022EB210:
	cmp r0, #0
	beq _022EB23C
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _022EB2C4 ; =0x00000B76
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EB2BC
_022EB23C:
	ldrsh r1, [r5, #4]
	add r0, sp, #4
	strh r1, [sp, #4]
	ldrsh r1, [r5, #6]
	strh r1, [sp, #6]
	ldrsh r1, [r4, #4]
	strh r1, [sp]
	ldrsh r1, [r4, #6]
	strh r1, [sp, #2]
	bl ov29_022E555C
	add r0, sp, #0
	bl ov29_022E555C
	ldrsh r1, [sp]
	ldrsh r2, [sp, #2]
	mov r0, r5
	mov r3, #1
	bl ov29_022F85F0
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	mov r0, r4
	mov r3, #1
	bl ov29_022F85F0
	mov r0, r5
	mov r1, #0
	bl ov29_022E1A40
	mov r0, r4
	mov r1, #0
	bl ov29_022E1A40
	mov r0, r5
	bl ov29_02321260
	mov r0, r4
	bl ov29_02321260
_022EB2BC:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_022EB2C4: .word 0x00000B76
	arm_func_end TrySwitchPlace

	arm_func_start ov29_022EB2C8
ov29_022EB2C8: ; 0x022EB2C8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, _022EB360 ; =0x0237C91C
	mov r2, r5, lsl #3
	ldrh r6, [r0, r2]
	mov r4, r1
	cmp r6, #0x26
	bne _022EB2F8
	bl GetFloorType
	cmp r0, #2
	ldreq r0, _022EB364 ; =0x000009C9
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_022EB2F8:
	add r0, r6, #0x87
	add r0, r0, #0x900
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	mov r0, r7
	bl StringFromMessageId
	ldr r1, _022EB368 ; =0x02352070
	bl Strcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	beq _022EB34C
	ldr r0, _022EB36C ; =0x0237C91E
	mov r1, r5, lsl #3
	ldrsh r0, [r0, r1]
	bl sub_0200D208
	ldr r1, _022EB370 ; =0x02352032
	mov r0, r0, lsl #2
	ldrh r0, [r1, r0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022EB34C:
	cmp r4, #1
	cmpeq r6, #0x1a
	ldreq r0, _022EB374 ; =0x000009CA
	movne r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EB360: .word 0x0237C91C
_022EB364: .word 0x000009C9
_022EB368: .word 0x02352070
_022EB36C: .word 0x0237C91E
_022EB370: .word 0x02352032
_022EB374: .word 0x000009CA
	arm_func_end ov29_022EB2C8

	arm_func_start ov29_022EB378
ov29_022EB378: ; 0x022EB378
	stmdb sp!, {r3, lr}
	ldrsh r0, [r0, #4]
	bl sub_0200D208
	ldr r1, _022EB394 ; =0x02352030
	mov r0, r0, lsl #2
	ldrh r0, [r1, r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EB394: .word 0x02352030
	arm_func_end ov29_022EB378

	arm_func_start ov29_022EB398
ov29_022EB398: ; 0x022EB398
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov29_022E9618
	mov r1, #0
	strh r1, [r0, #0x4a]
	cmp r4, #0
	strneb r1, [r0, #0x4e]
	strneb r1, [r0, #0x54]
	subne r1, r1, #1
	strneh r1, [r0, #0x5a]
	strneh r1, [r0, #0x5c]
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022EB398

	arm_func_start ov29_022EB3C8
ov29_022EB3C8: ; 0x022EB3C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov29_022E9618
	mov r1, #0
	strh r4, [r0, #0x4a]
	strb r1, [r0, #0x4e]
	strb r1, [r0, #0x54]
	sub r1, r1, #1
	strh r1, [r0, #0x5a]
	strh r1, [r0, #0x5c]
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022EB3C8

	arm_func_start ClearMonsterActionFields
ClearMonsterActionFields: ; 0x022EB3F4
	mov r1, #0
	strh r1, [r0]
	strb r1, [r0, #4]
	strb r1, [r0, #0xa]
	bx lr
	arm_func_end ClearMonsterActionFields

	arm_func_start SetMonsterActionFields
SetMonsterActionFields: ; 0x022EB408
	strh r1, [r0]
	mov r1, #0
	strb r1, [r0, #4]
	strb r1, [r0, #0xa]
	bx lr
	arm_func_end SetMonsterActionFields

	arm_func_start SetActionPassTurnOrWalk
SetActionPassTurnOrWalk: ; 0x022EB41C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl GetCanMoveFlag
	cmp r0, #0
	movne r0, #2
	moveq r0, #1
	strh r0, [r4]
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #0xa]
	ldmia sp!, {r4, pc}
	arm_func_end SetActionPassTurnOrWalk

	arm_func_start ov29_022EB44C
ov29_022EB44C: ; 0x022EB44C
	stmdb sp!, {r3, lr}
	ldrb r2, [r1]
	cmp r2, #1
	blo _022EB478
	cmp r2, #0x33
	bhs _022EB478
	sub r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl GetItemAtIdx
	ldmia sp!, {r3, pc}
_022EB478:
	cmp r2, #0x80
	bne _022EB498
	ldrsh r0, [r1, #2]
	ldrsh r1, [r1, #4]
	bl GetTile
	ldr r0, [r0, #0x10]
	bl ov29_022E1610
	ldmia sp!, {r3, pc}
_022EB498:
	cmp r2, #0x81
	ldreq r0, [r0, #0xb4]
	addeq r0, r0, #0x62
	ldmeqia sp!, {r3, pc}
	cmp r2, #0x90
	blo _022EB4DC
	cmp r2, #0x94
	bhs _022EB4DC
	ldr r0, _022EB4E4 ; =0x02353538
	sub r1, r2, #0x90
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	ldr r0, [r0, #0xb4]
	add r0, r0, #0x62
	ldmia sp!, {r3, pc}
_022EB4DC:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EB4E4: .word 0x02353538
	arm_func_end ov29_022EB44C

	arm_func_start ov29_022EB4E8
ov29_022EB4E8: ; 0x022EB4E8
	stmdb sp!, {r3, lr}
	mov r2, #6
	mul r2, r1, r2
	add r1, r0, r2
	ldrb r1, [r1, #4]
	cmp r1, #1
	blo _022EB528
	cmp r1, #0x33
	bhs _022EB528
	sub r0, r1, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl RemoveItem
	bl ov29_02347030
	mov r0, #1
	ldmia sp!, {r3, pc}
_022EB528:
	cmp r1, #0x80
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r0, #6
	add r0, r0, r2
	mov r1, #1
	bl ov29_023456BC
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022EB4E8

	arm_func_start ov29_022EB54C
ov29_022EB54C: ; 0x022EB54C
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0xb4]
	mov r3, #6
	add ip, ip, #0x4e
	mla r1, r3, r1, ip
	bl ov29_022EB44C
	ldmia sp!, {r3, pc}
	arm_func_end ov29_022EB54C

	arm_func_start ov29_022EB568
ov29_022EB568: ; 0x022EB568
	ldr r2, [r0, #0xb4]
	mov r0, #6
	mla r2, r1, r0, r2
	ldr r0, _022EB590 ; =0x02353538
	ldrb r1, [r2, #0x4e]
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bx lr
	.align 2, 0
_022EB590: .word 0x02353538
	arm_func_end ov29_022EB568

	arm_func_start ov29_022EB594
ov29_022EB594: ; 0x022EB594
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022EB5D0
_022EB5A0: ; jump table
	b _022EB5B0 ; case 0
	b _022EB5B8 ; case 1
	b _022EB5C0 ; case 2
	b _022EB5C8 ; case 3
_022EB5B0:
	mov r0, #1
	bx lr
_022EB5B8:
	mov r0, #2
	bx lr
_022EB5C0:
	mov r0, #3
	bx lr
_022EB5C8:
	mov r0, #4
	bx lr
_022EB5D0:
	mov r0, #0
	bx lr
	arm_func_end ov29_022EB594

	arm_func_start ov29_022EB5D8
ov29_022EB5D8: ; 0x022EB5D8
	stmdb sp!, {r3, lr}
	ldrsh r0, [r0, #4]
	ldr r1, _022EB604 ; =0x0000016B
	cmp r0, r1
	moveq r0, #0x35
	ldmeqia sp!, {r3, pc}
	bl GetItemCategoryVeneer
	ldr r1, _022EB608 ; =0x02352010
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EB604: .word 0x0000016B
_022EB608: .word 0x02352010
	arm_func_end ov29_022EB5D8

	arm_func_start ov29_022EB60C
ov29_022EB60C: ; 0x022EB60C
	stmdb sp!, {r3, r4, r5, lr}
	ldr ip, [r0, #0xb4]
	mov r3, #6
	add ip, ip, #0x4e
	mla r1, r3, r1, ip
	ldr r4, [r0, #0xb4]
	bl ov29_022EB44C
	ldrb r1, [r4, #0x4e]
	mov r5, r0
	cmp r1, #0x80
	bne _022EB648
	add r0, r4, #0x50
	mov r1, #1
	bl ov29_023456BC
	ldmia sp!, {r3, r4, r5, pc}
_022EB648:
	ldrb r1, [r5, #1]
	cmp r1, #0
	beq _022EB658
	bl RemoveEquivItemNoHole
_022EB658:
	mov r0, r5
	bl ItemZInit
	bl ov29_02347030
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022EB60C

	arm_func_start ov29_022EB668
ov29_022EB668: ; 0x022EB668
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r8, r1
	mov r1, #6
	mul r6, r8, r1
	mov sb, r0
	ldr r1, [sb, #0xb4]
	mov r7, r2
	add r1, r1, #0x4e
	add r1, r1, r6
	bl ov29_022EB44C
	mov r4, r0
	ldrsh r0, [r4, #4]
	ldr r5, [sb, #0xb4]
	bl IsHM
	cmp r0, #0
	bne _022EB7F8
	ldrsh r0, [r4, #4]
	bl GetItemCategoryVeneer
	cmp r0, #5
	bne _022EB7E8
	add r0, r5, r6
	ldrb r0, [r0, #0x4e]
	cmp r0, #0x80
	bne _022EB71C
	ldrh r1, [r4]
	add r5, r5, #0x50
	add r0, r5, r6
	strh r1, [sp]
	ldrh r2, [r4, #2]
	mov r1, #1
	strh r2, [sp, #2]
	ldrh r2, [r4, #4]
	strh r2, [sp, #4]
	bl ov29_023456BC
	ldrsh r0, [r4, #4]
	mov r3, #0xbb
	add r1, sp, #0
	sub r4, r0, #0xbc
	add r0, r5, r6
	mov r2, #1
	strh r4, [sp, #2]
	strh r3, [sp, #4]
	bl ov29_02345538
	b _022EB7F8
_022EB71C:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022EB7C8
	ldr r0, _022EB800 ; =0x02353538
	sub r1, r1, #1
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	ldr r0, [r0, #0xb4]
	add r0, r0, #0x62
	cmp r4, r0
	bne _022EB7A4
	mov r0, r4
	bl GetEquivItemIndex
	ldrsh r1, [r4, #4]
	mov r5, r0
	mov r0, r4
	sub r1, r1, #0xbc
	strh r1, [r4, #2]
	mov r1, #0xbb
	strh r1, [r4, #4]
	bl SetItemAcquired
	cmp r5, #0
	blt _022EB7F8
	mov r0, r5
	bl GetItemAtIdx
	ldrh r1, [r4]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	b _022EB7F8
_022EB7A4:
	ldrsh r2, [r4, #4]
	mov r0, r4
	mov r1, #0xbb
	sub r2, r2, #0xbc
	strh r2, [r4, #2]
	strh r1, [r4, #4]
	bl SetItemAcquired
	bl ov29_02347040
	b _022EB7F8
_022EB7C8:
	ldrsh r2, [r4, #4]
	mov r0, r4
	mov r1, #0xbb
	sub r2, r2, #0xbc
	strh r2, [r4, #2]
	strh r1, [r4, #4]
	bl SetItemAcquired
	b _022EB7F8
_022EB7E8:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl ov29_022EB60C
_022EB7F8:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EB800: .word 0x02353538
	arm_func_end ov29_022EB668

	arm_func_start ov29_022EB804
ov29_022EB804: ; 0x022EB804
	cmp r0, #0
	ldrge r1, _022EB818 ; =0x0237C920
	movlt r0, #0
	ldrgeb r0, [r1, r0, lsl #3]
	bx lr
	.align 2, 0
_022EB818: .word 0x0237C920
	arm_func_end ov29_022EB804

	arm_func_start ov29_022EB81C
ov29_022EB81C: ; 0x022EB81C
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _022EB89C ; =0x0237C918
	ldr r2, [r2]
	cmp r2, #0xa
	ldmgeia sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _022EB8A0 ; =0x0237C91C
	b _022EB850
_022EB83C:
	mov r3, r5, lsl #3
	ldrh r3, [r4, r3]
	cmp r0, r3
	ldmeqia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
_022EB850:
	cmp r5, r2
	blt _022EB83C
	ldr ip, _022EB89C ; =0x0237C918
	ldr r4, _022EB8A0 ; =0x0237C91C
	mov r6, r2, lsl #3
	ldr lr, [ip]
	add r3, r0, #0x87
	add lr, lr, #1
	ldr r5, _022EB8A4 ; =0x0237C91E
	strh r0, [r4, r6]
	ldr r4, _022EB8A8 ; =0x0237C920
	strh r1, [r5, r6]
	mov r1, #1
	ldr r0, _022EB8AC ; =0x0237C922
	strb r1, [r4, r2, lsl #3]
	add r1, r3, #0x900
	strh r1, [r0, r6]
	str lr, [ip]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022EB89C: .word 0x0237C918
_022EB8A0: .word 0x0237C91C
_022EB8A4: .word 0x0237C91E
_022EB8A8: .word 0x0237C920
_022EB8AC: .word 0x0237C922
	arm_func_end ov29_022EB81C

	arm_func_start ov29_022EB8B0
ov29_022EB8B0: ; 0x022EB8B0
	ldr r1, _022EB8EC ; =0x0237C918
	mov r3, #0
	ldr ip, [r1]
	ldr r2, _022EB8F0 ; =0x0237C91C
	b _022EB8DC
_022EB8C4:
	mov r1, r3, lsl #3
	ldrh r1, [r2, r1]
	cmp r0, r1
	moveq r0, r3
	bxeq lr
	add r3, r3, #1
_022EB8DC:
	cmp r3, ip
	blt _022EB8C4
	mvn r0, #0
	bx lr
	.align 2, 0
_022EB8EC: .word 0x0237C918
_022EB8F0: .word 0x0237C91C
	arm_func_end ov29_022EB8B0

	arm_func_start ov29_022EB8F4
ov29_022EB8F4: ; 0x022EB8F4
	stmdb sp!, {r3, lr}
	ldr r1, _022EB938 ; =0x0237C918
	mov ip, #0
	ldr lr, [r1]
	ldr r2, _022EB93C ; =0x0237C91C
	b _022EB92C
_022EB90C:
	mov r3, ip, lsl #3
	ldrh r1, [r2, r3]
	cmp r0, r1
	ldreq r0, _022EB940 ; =0x0237C920
	moveq r1, #0
	streqb r1, [r0, r3]
	ldmeqia sp!, {r3, pc}
	add ip, ip, #1
_022EB92C:
	cmp ip, lr
	blt _022EB90C
	ldmia sp!, {r3, pc}
	.align 2, 0
_022EB938: .word 0x0237C918
_022EB93C: .word 0x0237C91C
_022EB940: .word 0x0237C920
	arm_func_end ov29_022EB8F4

	arm_func_start ov29_022EB944
ov29_022EB944: ; 0x022EB944
	stmdb sp!, {r4, lr}
	cmp r1, #0
	ldr r4, [r0, #0xb4]
	beq _022EB964
	bl ov29_022E272C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_022EB964:
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	cmp r0, #1
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end ov29_022EB944

	arm_func_start ov29_022EB9A0
ov29_022EB9A0: ; 0x022EB9A0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _022EBA64 ; =0x0237C918
	mov r3, #0
	ldr ip, [r0]
	b _022EBA54
_022EB9B8:
	add lr, r3, #1
	mov r2, r3, lsl #3
	ldr r1, _022EBA68 ; =0x0237C91C
	ldr r0, _022EBA6C ; =0x02352074
	b _022EBA48
_022EB9CC:
	mov r4, lr, lsl #3
	ldrh r5, [r1, r2]
	ldrh r4, [r1, r4]
	add r5, r0, r5, lsl #3
	add r4, r0, r4, lsl #3
	ldr r5, [r5, #4]
	ldr r4, [r4, #4]
	cmp r5, r4
	ble _022EBA44
	add r6, sp, #0
	add r7, r1, r2
	mov r5, #4
_022EB9FC:
	ldrh r4, [r7], #2
	subs r5, r5, #1
	strh r4, [r6], #2
	bne _022EB9FC
	add r7, r1, lr, lsl #3
	add r6, r1, r2
	mov r5, #4
_022EBA18:
	ldrh r4, [r7], #2
	subs r5, r5, #1
	strh r4, [r6], #2
	bne _022EBA18
	add r7, sp, #0
	add r6, r1, lr, lsl #3
	mov r5, #4
_022EBA34:
	ldrh r4, [r7], #2
	subs r5, r5, #1
	strh r4, [r6], #2
	bne _022EBA34
_022EBA44:
	add lr, lr, #1
_022EBA48:
	cmp lr, ip
	blt _022EB9CC
	add r3, r3, #1
_022EBA54:
	cmp r3, ip
	blt _022EB9B8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EBA64: .word 0x0237C918
_022EBA68: .word 0x0237C91C
_022EBA6C: .word 0x02352074
	arm_func_end ov29_022EB9A0

	arm_func_start ov29_022EBA70
ov29_022EBA70: ; 0x022EBA70
	ldr r0, _022EBA80 ; =0x0237C918
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_022EBA80: .word 0x0237C918
	arm_func_end ov29_022EBA70

	arm_func_start ov29_022EBA84
ov29_022EBA84: ; 0x022EBA84
	ldr r0, _022EBA90 ; =0x0237C918
	ldr r0, [r0]
	bx lr
	.align 2, 0
_022EBA90: .word 0x0237C918
	arm_func_end ov29_022EBA84

	arm_func_start ov29_022EBA94
ov29_022EBA94: ; 0x022EBA94
	mov r2, #0x1b
	strh r2, [r0]
	mov r2, #0
	strb r2, [r0, #4]
	strb r2, [r0, #0xa]
	strb r1, [r0, #4]
	bx lr
	arm_func_end ov29_022EBA94

	arm_func_start ov29_022EBAB0
ov29_022EBAB0: ; 0x022EBAB0
	ldrb ip, [sp]
	cmp ip, #0
	cmpeq r3, #0
	ldrne r0, _022EBB48 ; =0x0237C96C
	movne r2, #0x80
	strneb r2, [r0]
	bne _022EBB30
	cmp r2, #0
	ldreq r2, _022EBB48 ; =0x0237C96C
	addeq r0, r0, #1
	streqb r0, [r2]
	beq _022EBB30
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _022EBB20
_022EBAEC: ; jump table
	b _022EBB20 ; case 0
	b _022EBB00 ; case 1
	b _022EBB08 ; case 2
	b _022EBB10 ; case 3
	b _022EBB18 ; case 4
_022EBB00:
	mov r2, #0
	b _022EBB24
_022EBB08:
	mov r2, #1
	b _022EBB24
_022EBB10:
	mov r2, #2
	b _022EBB24
_022EBB18:
	mov r2, #3
	b _022EBB24
_022EBB20:
	mov r2, #0
_022EBB24:
	ldr r0, _022EBB48 ; =0x0237C96C
	add r2, r2, #0x90
	strb r2, [r0]
_022EBB30:
	ldrsh r2, [r1]
	ldr r0, _022EBB48 ; =0x0237C96C
	strh r2, [r0, #2]
	ldrsh r1, [r1, #2]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_022EBB48: .word 0x0237C96C
	arm_func_end ov29_022EBAB0

	arm_func_start ov29_022EBB4C
ov29_022EBB4C: ; 0x022EBB4C
	ldr r0, _022EBB64 ; =0x0237C96C
	mov r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_022EBB64: .word 0x0237C96C
	arm_func_end ov29_022EBB4C

	arm_func_start ov29_022EBB68
ov29_022EBB68: ; 0x022EBB68
	ldr r1, _022EBB88 ; =0x0237C96C
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r1, [r1, #4]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_022EBB88: .word 0x0237C96C
	arm_func_end ov29_022EBB68

	arm_func_start ov29_022EBB8C
ov29_022EBB8C: ; 0x022EBB8C
	ldr r0, _022EBB94 ; =0x0237C96C
	bx lr
	.align 2, 0
_022EBB94: .word 0x0237C96C
	arm_func_end ov29_022EBB8C

	arm_func_start ov29_022EBB98
ov29_022EBB98: ; 0x022EBB98
	ldr r0, _022EBBA4 ; =0x0237C96C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_022EBBA4: .word 0x0237C96C
	arm_func_end ov29_022EBB98

	arm_func_start ov29_022EBBA8
ov29_022EBBA8: ; 0x022EBBA8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl SetMonsterActionFields
	ldr r0, _022EBBE4 ; =0x0237C96C
	mov r1, #0
	ldrh r2, [r0]
	strh r2, [r4, #4]
	ldrh r2, [r0, #2]
	strh r2, [r4, #6]
	ldrh r0, [r0, #4]
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xe]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EBBE4: .word 0x0237C96C
	arm_func_end ov29_022EBBA8

	arm_func_start ov29_022EBBE8
ov29_022EBBE8: ; 0x022EBBE8
	stmdb sp!, {r4, lr}
	mov r1, #0xc
	mov r4, r0
	bl SetMonsterActionFields
	ldr r0, _022EBC28 ; =0x0237C96C
	mov r1, #0
	ldrh r2, [r0]
	strh r2, [r4, #4]
	ldrh r2, [r0, #2]
	strh r2, [r4, #6]
	ldrh r0, [r0, #4]
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xe]
	ldmia sp!, {r4, pc}
	.align 2, 0
_022EBC28: .word 0x0237C96C
	arm_func_end ov29_022EBBE8

	arm_func_start ov29_022EBC2C
ov29_022EBC2C: ; 0x022EBC2C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0x1d
	mov r6, r0
	mov r4, r2
	bl SetMonsterActionFields
	strb r5, [r6, #4]
	strb r4, [r6, #0xa]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_022EBC2C

	arm_func_start SetActionRegularAttack
SetActionRegularAttack: ; 0x022EBC50
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x32
	mov r5, r0
	bl SetMonsterActionFields
	cmp r4, #0xff
	andne r0, r4, #7
	strneb r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end SetActionRegularAttack

	arm_func_start ov29_022EBC74
ov29_022EBC74: ; 0x022EBC74
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x17
	mov r5, r0
	bl SetMonsterActionFields
	cmp r4, #0xff
	andne r0, r4, #7
	strneb r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov29_022EBC74

	arm_func_start ov29_022EBC98
ov29_022EBC98: ; 0x022EBC98
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0x14
	mov r6, r0
	mov r4, r2
	bl SetMonsterActionFields
	strb r5, [r6, #4]
	strb r4, [r6, #0xa]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov29_022EBC98

	arm_func_start SetActionUseMoveAi
SetActionUseMoveAi: ; 0x022EBCBC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0x15
	mov r6, r0
	mov r4, r2
	bl SetMonsterActionFields
	cmp r4, #0xff
	strb r5, [r6, #4]
	andne r0, r4, #7
	strneb r0, [r6, #2]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end SetActionUseMoveAi

	arm_func_start ov29_022EBCE8
ov29_022EBCE8: ; 0x022EBCE8
	ldrh r1, [r0]
	cmp r1, #0x15
	ldreqb r0, [r0, #4]
	bxeq lr
	cmp r1, #0x14
	ldreqb r0, [r0, #0xa]
	mvnne r0, #0
	bx lr
	arm_func_end ov29_022EBCE8

	arm_func_start RunFractionalTurn
RunFractionalTurn: ; 0x022EBD08
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov r4, r0
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	bl TrySpawnMonsterAndActivatePlusMinus
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	mov r0, r4
	bl RunLeaderTurn
	mov r4, r0
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	cmp r4, #0
	beq _022EBD60
	bl DecrementWindCounter
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
_022EBD60:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	bl GetLeader
	mov r8, r0
	bl ov29_02348FD8
	mov r5, #0
	b _022EBECC
_022EBD80:
	ldr r0, _022EC2FC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r4, [r0, #0xb28]
	mov r0, r4
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EBEC8
	ldr r6, [r4, #0xb4]
	ldrb r0, [r6, #7]
	cmp r0, #0
	bne _022EBEC8
	bl IsFloorOver
	cmp r0, #0
	bne _022EBED4
	ldr r1, _022EC2FC ; =0x02353538
	mov r0, r4
	ldr r1, [r1]
	str r4, [r1, #0xc4]
	bl sub_01FFBDF4
	bl TryActivateArtificialWeatherAbilities
	mov r1, #0
	mov r0, r4
	strb r1, [r6, #0x14e]
	bl CalcSpeedStageWrapper
	ldr r1, _022EC2FC ; =0x02353538
	ldr r3, _022EC300 ; =0x02352284
	ldr r2, [r1]
	mov r1, #0x32
	add r2, r2, #0x700
	ldrsh r2, [r2, #0x80]
	mla r1, r0, r1, r3
	mov r0, r2, lsl #1
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _022EBEC8
	ldrb r0, [r6, #0x152]
	cmp r0, #0
	bne _022EBEC8
	ldrh r0, [r6]
	tst r0, #0x8000
	bne _022EBEC8
	tst r0, #0x4000
	bicne r0, r0, #0x4000
	strneh r0, [r6]
	bne _022EBEC8
	mov r1, #0
	mov r0, r4
	strb r1, [r6, #0x14f]
	bl TickStatusAndHealthRegen
	mov r0, r4
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EBEC8
	mov r0, r4
	bl EnemyEvolution
	mov r0, r4
	mov r1, #1
	bl ov29_02307D54
	mov sb, #0
	mov r7, sb
	mov r6, sb
	b _022EBEC0
_022EBE80:
	mov r0, r4
	mov r1, r7
	bl RunMonsterAi
	bl IsFloorOver
	cmp r0, #0
	bne _022EBEC8
	mov r0, r4
	bl ExecuteMonsterAction
	cmp r0, #0
	beq _022EBEC8
	mov r0, r6
	bl TryForcedLoss
	bl IsFloorOver
	cmp r0, #0
	bne _022EBEC8
	add sb, sb, #1
_022EBEC0:
	cmp sb, #3
	blt _022EBE80
_022EBEC8:
	add r5, r5, #1
_022EBECC:
	cmp r5, #4
	blt _022EBD80
_022EBED4:
	mov sb, #0
_022EBED8:
	mov r3, #0
	mov sl, r3
	add r2, sp, #0
_022EBEE4:
	mov r0, r3, lsl #3
	str sl, [r2, r3, lsl #3]
	add r3, r3, #1
	add r1, r2, r3, lsl #3
	add r0, r2, r0
	str r1, [r0, #4]
	cmp r3, #3
	blt _022EBEE4
	str sl, [sp, #0x18]
	str sl, [sp, #0x1c]
	add r4, sp, #0x20
	add fp, sp, #0
	mov r6, #0
_022EBF18:
	ldr r0, _022EC2FC ; =0x02353538
	ldr r0, [r0]
	add r0, r0, sl, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid__022EC608
	cmp r0, #0
	ldrne r1, [r7, #0xb4]
	ldrneb r0, [r1, #0x14e]
	cmpne r0, #0
	beq _022EBFA8
	ldrb r0, [r1, #7]
	cmp r0, #0
	strneb r6, [r1, #0x14f]
	strneb r6, [r1, #0x14e]
	bne _022EBFA8
	ldrsh r1, [r8, #6]
	ldrsh r0, [r7, #6]
	sub r0, r1, r0
	bl Abs
	ldrsh r2, [r8, #4]
	ldrsh r1, [r7, #4]
	mov r5, r0
	sub r0, r2, r1
	bl Abs
	cmp r0, r5
	movle r0, r5
	cmp r0, #3
	movge r0, #2
	add r2, fp, r0, lsl #3
	ldr r1, [r2, #4]
	add r0, r4, sl, lsl #3
	str r7, [r4, sl, lsl #3]
	str r1, [r0, #4]
	str r0, [r2, #4]
_022EBFA8:
	add sl, sl, #1
	cmp sl, #4
	blt _022EBF18
	mov r7, #0
	add r5, sp, #0
	mov sl, #1
	mov r6, r7
	b _022EC00C
_022EBFC8:
	ldr r4, [r5]
	cmp r4, #0
	beq _022EC008
	ldr r2, [r4, #0xb4]
	mov r0, r4
	strb sl, [r2, #0x14f]
	mov r1, sl
	strb r7, [r2, #0x14e]
	bl RunMonsterAi
	mov r0, r4
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, r6
	bl TryForcedLoss
	mov r0, r4
	bl EntityIsValid__022EC608
_022EC008:
	ldr r5, [r5, #4]
_022EC00C:
	cmp r5, #0
	bne _022EBFC8
	add sb, sb, #1
	cmp sb, #3
	blt _022EBED8
	bl IsFloorOver
	cmp r0, #0
	bne _022EC094
	mov r4, #0
	ldr r5, _022EC2FC ; =0x02353538
	mov r6, r4
_022EC038:
	ldr r0, [r5]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid__022EC608
	cmp r0, #0
	ldrne r8, [r7, #0xb4]
	ldrneb r0, [r8, #0x14e]
	cmpne r0, #0
	beq _022EC088
	mov r0, r7
	bl ov29_0230FC24
	mov r0, r7
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC088
	mov r0, r7
	bl EnemyEvolution
	strb r6, [r8, #0x14e]
_022EC088:
	add r4, r4, #1
	cmp r4, #4
	blt _022EC038
_022EC094:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	mov sb, #0
	mov r5, sb
	mov r7, sb
	ldr r6, _022EC300 ; =0x02352284
	mov fp, #0x32
	ldr r4, _022EC2FC ; =0x02353538
	b _022EC1C0
_022EC0BC:
	ldr r0, [r4]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb38]
	mov r0, r8
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC1BC
	bl IsFloorOver
	cmp r0, #0
	bne _022EC1C8
	ldr sl, [r8, #0xb4]
	ldr r1, [r4]
	mov r0, r8
	str r8, [r1, #0xc4]
	bl sub_01FFBDF4
	bl TryActivateArtificialWeatherAbilities
	ldrh r0, [sl]
	tst r0, #0x8000
	bne _022EC1BC
	tst r0, #0x4000
	bicne r0, r0, #0x4000
	strneh r0, [sl]
	bne _022EC1BC
	mov r0, r8
	strb r7, [sl, #0x14e]
	bl CalcSpeedStageWrapper
	ldr r2, [r4]
	mla r1, r0, fp, r6
	add r0, r2, #0x700
	ldrsh r0, [r0, #0x80]
	mov r0, r0, lsl #1
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _022EC1BC
	ldrb r0, [sl, #0x152]
	cmp r0, #0
	bne _022EC1BC
	ldrh r1, [sl]
	mov r0, r8
	bic r1, r1, #0xc000
	strh r1, [sl]
	strb r5, [sl, #0x14f]
	bl TickStatusAndHealthRegen
	mov r0, r8
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC1BC
	mov r0, r8
	bl EnemyEvolution
	mov r0, r8
	mov r1, #0
	bl RunMonsterAi
	bl IsFloorOver
	cmp r0, #0
	bne _022EC1C8
	mov r0, r8
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, #0
	bl TryForcedLoss
	bl IsFloorOver
	cmp r0, #0
	bne _022EC1C8
_022EC1BC:
	add sb, sb, #1
_022EC1C0:
	cmp sb, #0x10
	blt _022EC0BC
_022EC1C8:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC23C
	mov r4, #0
	ldr r5, _022EC2FC ; =0x02353538
	mov r6, r4
_022EC1E0:
	ldr r0, [r5]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb38]
	mov r0, r7
	bl EntityIsValid__022EC608
	cmp r0, #0
	ldrne r8, [r7, #0xb4]
	ldrneb r0, [r8, #0x14e]
	cmpne r0, #0
	beq _022EC230
	mov r0, r7
	bl ov29_0230FC24
	mov r0, r7
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC230
	mov r0, r7
	bl EnemyEvolution
	strb r6, [r8, #0x14e]
_022EC230:
	add r4, r4, #1
	cmp r4, #0x10
	blt _022EC1E0
_022EC23C:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	ldr r4, _022EC2FC ; =0x02353538
	ldr r1, _022EC304 ; =0x023522B6
	ldr r0, [r4]
	add r0, r0, #0x700
	ldrsh r0, [r0, #0x80]
	add r0, r0, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _022EC2C4
	mov r5, #0
	b _022EC2A4
_022EC278:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb78]
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC2A0
	mov r0, #0
	bl DisplayActions
	b _022EC2AC
_022EC2A0:
	add r5, r5, #1
_022EC2A4:
	cmp r5, #0x14
	blt _022EC278
_022EC2AC:
	mov r0, #1
	mov r1, #0
	bl ov29_023354C4
	bl ov29_022EF9C8
	mov r0, #0
	bl TryForcedLoss
_022EC2C4:
	ldr r1, _022EC2FC ; =0x02353538
	ldr r0, [r1]
	add r0, r0, #0x700
	ldrsh r2, [r0, #0x80]
	add r2, r2, #1
	strh r2, [r0, #0x80]
	ldr r0, [r1]
	add r0, r0, #0x700
	ldrsh r1, [r0, #0x80]
	cmp r1, #0x18
	moveq r1, #0
	streqh r1, [r0, #0x80]
_022EC2F4:
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EC2FC: .word 0x02353538
_022EC300: .word 0x02352284
_022EC304: .word 0x023522B6
	arm_func_end RunFractionalTurn

	arm_func_start RunLeaderTurn
RunLeaderTurn: ; 0x022EC308
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl GetLeader
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov29_02348FD8
	bl TryActivateArtificialWeatherAbilities
	mov r0, r4
	bl CalcSpeedStageWrapper
	ldr r1, _022EC600 ; =0x02353538
	ldr r3, _022EC604 ; =0x02352284
	ldr r2, [r1]
	mov r1, #0x32
	add r2, r2, #0x700
	mla r1, r0, r1, r3
	ldrsh r2, [r2, #0x80]
	mov r0, r2, lsl #1
	ldrsh r0, [r0, r1]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0x152]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r4
	mov r1, #1
	bl ov29_02307D54
_022EC380:
	bl GetLeader
	movs sb, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_01FFBDF4
	mov r0, #0
	bl DisplayActions
	cmp r0, #0
	bne _022EC3C8
	ldr r0, _022EC600 ; =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x78b]
	cmp r0, #0
	ldreqb r0, [r1, #0x78e]
	cmpeq r0, #0
	beq _022EC3C8
	mov r0, #0xc
	bl AdvanceFrame
_022EC3C8:
	cmp sb, #0
	moveq r0, #0
	beq _022EC3E8
	ldr r0, [sb]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
_022EC3E8:
	cmp r0, #0
	ldrne r0, [sb, #0xb4]
	movne r1, #0
	strneb r1, [r0, #0x101]
	bl IsFloorOver
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022EC600 ; =0x02353538
	mov r1, #0
	ldr r2, [r0]
	cmp sl, #0
	str sb, [r2, #0xc4]
	ldr r0, [r0]
	movne sl, r1
	str r1, [r0, #0xc8]
	bne _022EC434
	mov r0, sb
	bl TickStatusAndHealthRegen
_022EC434:
	bl IsFloorOver
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov29_022E81F8
	mov r0, sb
	bl EnemyEvolution
	ldr r0, _022EC600 ; =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x11]
	bl ov29_022F0EDC
	ldr r0, _022EC600 ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x11]
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, #0
	bl TryForcedLoss
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0xb4]
	ldrh r0, [r1]
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	strneh r0, [r1]
	ldrneh r0, [r1]
	orrne r0, r0, #0x4000
	strneh r0, [r1]
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _022EC600 ; =0x02353538
	ldr r1, [r4]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _022EC59C
	mov r7, #0
	strb r7, [r1, #0x10]
	mov r5, r7
	mov fp, r7
	b _022EC594
_022EC500:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC590
	ldr r8, [r6, #0xb4]
	ldrh r0, [r8]
	tst r0, #0x8000
	beq _022EC590
	bl IsFloorOver
	cmp r0, #0
	bne _022EC59C
	mov r0, r6
	bl TickStatusAndHealthRegen
	mov r0, r6
	bl EntityIsValid__022EC608
	cmp r0, #0
	beq _022EC590
	mov r0, r6
	bl EnemyEvolution
	mov r0, r6
	mov r1, r5
	bl RunMonsterAi
	mov r0, r6
	bl ExecuteMonsterAction
	mov r0, fp
	bl TryForcedLoss
	ldrh r0, [r8]
	bic r0, r0, #0x8000
	strh r0, [r8]
	ldrh r0, [r8]
	orr r0, r0, #0x4000
	strh r0, [r8]
_022EC590:
	add r7, r7, #1
_022EC594:
	cmp r7, #0x14
	blt _022EC500
_022EC59C:
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022EC600 ; =0x02353538
	ldr r1, [r0]
	ldr r0, [r1, #0xc8]
	cmp r0, #0
	beq _022EC5DC
	bl ov29_022F3934
	ldr r0, _022EC600 ; =0x02353538
	mov r1, #0
	ldr r0, [r0]
	mov sl, #1
	str r1, [r0, #0xc8]
	b _022EC380
_022EC5DC:
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0x101]
	cmp r0, #0
	addne r0, r1, #0x700
	movne r1, #0
	strneh r1, [r0, #0x80]
	bne _022EC380
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EC600: .word 0x02353538
_022EC604: .word 0x02352284
	arm_func_end RunLeaderTurn
