	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"src/complex/catan.bc"
	.globl	catan
	.align	2
	.type	catan,%function
catan:                                  @ @catan
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#28
	sub	sp, sp, #28
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r8, r3
	mov	r9, r2
	mov	r11, r0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r2, #0
	mov	r3, #0
	mov	r0, r9
	mov	r1, r8
	b	.LBB0_5
.LBB0_5:                                @ %entry
	bl	__aeabi_dcmpeq
	ldr	r6, [sp, #64]
	ldr	r5, [sp, #68]
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                @ %entry
	mov	r3, #267386880
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	b	.LBB0_7
.LBB0_7:                                @ %entry
	orr	r3, r3, #805306368
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	bne	.LBB0_34
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	mov	r0, r9
	mov	r1, r8
	mov	r2, r9
	mov	r3, r8
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	bl	__aeabi_dmul
	mov	r3, r1
	mov	r1, #267386880
	mov	r2, r0
	b	.LBB0_10
.LBB0_10:                               @ %if.end
	mov	r0, #0
	orr	r1, r1, #805306368
	str	r2, [sp, #24]           @ 4-byte Spill
	str	r3, [sp, #20]           @ 4-byte Spill
	b	.LBB0_11
.LBB0_11:                               @ %if.end
	bl	__aeabi_dsub
	mov	r4, r5
	mov	r7, r6
	mov	r5, r0
	b	.LBB0_12
.LBB0_12:                               @ %if.end
	mov	r6, r1
	mov	r0, r7
	mov	r1, r4
	mov	r2, r7
	b	.LBB0_13
.LBB0_13:                               @ %if.end
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_14
.LBB0_14:                               @ %if.end
	mov	r0, r5
	mov	r1, r6
	mov	r5, r4
	mov	r6, r7
	b	.LBB0_15
.LBB0_15:                               @ %if.end
	bl	__aeabi_dsub
	mov	r10, r0
	mov	r4, r1
	mov	r2, #0
	b	.LBB0_16
.LBB0_16:                               @ %if.end
	mov	r3, #0
                                        @ kill: R0<def> R10<kill>
                                        @ kill: R1<def> R4<kill>
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_34
	b	.LBB0_17
.LBB0_17:                               @ %if.end8
	mov	r3, #267386880
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	b	.LBB0_18
.LBB0_18:                               @ %if.end8
	orr	r3, r3, #-1342177280
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_19
.LBB0_19:                               @ %if.end8
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	b	.LBB0_20
.LBB0_20:                               @ %if.end8
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__aeabi_dadd
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_21
.LBB0_21:                               @ %if.end8
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	bl	__aeabi_dcmpeq
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB0_22
.LBB0_22:                               @ %if.end8
	mov	r0, r9
	mov	r1, r8
	mov	r2, r9
	mov	r3, r8
	b	.LBB0_23
.LBB0_23:                               @ %if.end8
	bl	__aeabi_dadd
	mov	r2, r10
	mov	r3, r4
	bl	atan2
	b	.LBB0_24
.LBB0_24:                               @ %if.end8
	mov	r8, #266338304
	mov	r2, #0
	orr	r8, r8, #805306368
	mov	r3, r8
	b	.LBB0_25
.LBB0_25:                               @ %if.end8
	bl	__aeabi_dmul
	str	r0, [sp, #4]            @ 4-byte Spill
	ldr	r2, .LCPI0_8
	ldr	r3, .LCPI0_9
	b	.LBB0_26
.LCPI0_8:
	.long	1413754136              @ 0x54442d18
.LCPI0_9:
	.long	1074340347              @ 0x400921fb
.LBB0_26:                               @ %if.end8
	mov	r9, r1
                                        @ kill: R1<def> R9<kill>
	bl	__aeabi_ddiv
	mov	r4, r5
	b	.LBB0_27
.LBB0_27:                               @ %if.end8
	mov	r5, r0
	mov	r10, r6
	mov	r6, r1
	mov	r2, #0
	b	.LBB0_28
.LBB0_28:                               @ %if.end8
	mov	r3, #0
                                        @ kill: R0<def> R5<kill>
                                        @ kill: R1<def> R6<kill>
	bl	__aeabi_dcmplt
	b	.LBB0_29
.LBB0_29:                               @ %if.end8
	mov	r7, r0
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_30
.LBB0_30:                               @ %if.end8
	mov	r3, #0
	bl	__aeabi_dcmpun
	mov	r3, #266338304
	orrs	r0, r0, r7
	b	.LBB0_31
.LBB0_31:                               @ %if.end8
	mov	r1, r6
	mov	r2, #0
	mov	r6, r10
	orr	r3, r3, #-1342177280
	b	.LBB0_32
.LBB0_32:                               @ %if.end8
	mov	r0, r5
	moveq	r3, r8
	bl	__aeabi_dadd
	bl	__aeabi_d2iz
	b	.LBB0_33
.LBB0_33:                               @ %if.end8
	bl	__aeabi_i2d
	mov	r7, r0
	ldr	r0, [sp, #16]           @ 4-byte Reload
	mov	r10, r1
	cmp	r0, #0
	beq	.LBB0_37
	b	.LBB0_34
.LBB0_34:                               @ %ovrf
	ldr	r1, .LCPI0_14
	mov	r2, r11
	str	r1, [r11, #4]
	ldr	r0, .LCPI0_15
	b	.LBB0_35
.LCPI0_14:
	.long	2145504499              @ 0x7fe1ccf3
.LCPI0_15:
	.long	2246822048              @ 0x85ebc8a0
.LBB0_35:                               @ %ovrf
	mov	r6, r1
	str	r0, [r11]
	str	r1, [r11, #12]
	str	r0, [r2, #8]!
	mov	r5, r0
	b	.LBB0_36
.LBB0_36:                               @ %return
	stm	r11, {r5, r6}
	stm	r2, {r0, r1}
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_37:                               @ %if.end18
	ldr	r3, .LCPI0_10
	mov	r0, r7
	mov	r1, r10
	mov	r2, #1409286144
	b	.LBB0_38
.LCPI0_10:
	.long	3221823995              @ 0xc00921fb
.LBB0_38:                               @ %if.end18
	bl	__aeabi_dmul
	mov	r2, r0
	ldr	r0, [sp, #4]            @ 4-byte Reload
	mov	r3, r1
	b	.LBB0_39
.LBB0_39:                               @ %if.end18
	mov	r1, r9
	bl	__aeabi_dadd
	ldr	r3, .LCPI0_11
	mov	r9, r4
	b	.LBB0_40
.LCPI0_11:
	.long	3189836614              @ 0xbe210b46
.LBB0_40:                               @ %if.end18
	mov	r5, r0
	mov	r4, r6
	mov	r6, r1
	mov	r0, r7
	b	.LBB0_41
.LBB0_41:                               @ %if.end18
	mov	r1, r10
	mov	r2, #268435456
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_42
.LBB0_42:                               @ %if.end18
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	b	.LBB0_43
.LBB0_43:                               @ %if.end18
	ldr	r2, .LCPI0_12
	ldr	r3, .LCPI0_13
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_44
.LCPI0_12:
	.long	826654830               @ 0x3145c06e
.LCPI0_13:
	.long	3161088611              @ 0xbc6a6263
.LBB0_44:                               @ %if.end18
	mov	r0, r7
	mov	r1, r10
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_45
.LBB0_45:                               @ %if.end18
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dadd
	b	.LBB0_46
.LBB0_46:                               @ %if.end18
	mov	r3, #267386880
	mov	r5, r0
	mov	r8, r1
	mov	r0, r4
	b	.LBB0_47
.LBB0_47:                               @ %if.end18
	mov	r1, r9
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	b	.LBB0_48
.LBB0_48:                               @ %if.end18
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_49
.LBB0_49:                               @ %if.end18
	mov	r3, r1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__aeabi_dadd
	b	.LBB0_50
.LBB0_50:                               @ %if.end18
	ldr	r2, [sp, #12]           @ 4-byte Reload
	ldr	r3, [sp, #8]            @ 4-byte Reload
	bl	__aeabi_ddiv
	bl	log
	b	.LBB0_51
.LBB0_51:                               @ %if.end18
	mov	r3, #265289728
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	b	.LBB0_52
.LBB0_52:                               @ %if.end18
	mov	r7, r0
	mov	r9, r1
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_53
.LBB0_53:                               @ %if.end18
                                        @ kill: R0<def> R7<kill>
                                        @ kill: R1<def> R9<kill>
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_54
.LBB0_54:                               @ %if.end18
	mov	r3, r1
	mov	r0, r5
	mov	r1, r8
	bl	__aeabi_dadd
	b	.LBB0_55
.LBB0_55:                               @ %if.end18
	mov	r5, r0
	mov	r6, r1
	mov	r0, r7
	mov	r1, r9
	b	.LBB0_56
.LBB0_56:                               @ %if.end18
	mov	r2, #0
	mov	r3, #0
	stm	r11, {r5, r6}
	bl	__aeabi_dadd
	mov	r2, r11
	str	r1, [r11, #12]
	str	r0, [r2, #8]!
	b	.LBB0_36
.Ltmp0:
	.size	catan, .Ltmp0-catan
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
