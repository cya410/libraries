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
	.file	"src/complex/ctanh.bc"
	.globl	ctanh
	.align	2
	.type	ctanh,%function
ctanh:                                  @ @ctanh
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r6, [sp, #48]
	ldr	r7, [sp, #52]
	mov	r1, #267386880
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r10, r3
	mov	r9, r0
	mov	r8, r2
	bic	r0, r10, #-2147483648
	orr	r1, r1, #1879048192
	cmp	r0, r1
	blo	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	ldr	r0, .LCPI0_0
	and	r0, r10, r0
	orrs	r0, r0, r8
	beq	.LBB0_26
	b	.LBB0_6
.LCPI0_0:
	.long	1048575                 @ 0xfffff
.LBB0_6:                                @ %if.then7
	mov	r0, r8
	mov	r1, r10
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_7
.LBB0_7:                                @ %if.then7
	stm	r9, {r8, r10}
	bl	__aeabi_dmul
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_8
.LBB0_8:                                @ %if.then7
	mov	r0, r6
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_9
.LBB0_9:                                @ %if.then7
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	movne	r5, r7
	movne	r4, r6
	b	.LBB0_50
.LBB0_10:                               @ %cond.true63
	and	r2, r7, r1
	cmp	r2, r1
	bhs	.LBB0_23
	b	.LBB0_11
.LBB0_11:                               @ %if.end82
	mov	r1, #3538944
	orr	r1, r1, #1073741824
	cmp	r0, r1
	blo	.LBB0_32
	b	.LBB0_12
.LBB0_12:                               @ %if.then85
	mov	r0, r8
	mov	r1, r10
	bl	fabs
	eor	r1, r1, #-2147483648
	b	.LBB0_13
.LBB0_13:                               @ %if.then85
	bl	exp
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r1, #267386880
	mov	r11, r0
	b	.LBB0_14
.LBB0_14:                               @ %if.then85
	mov	r0, #0
	mov	r2, r8
	mov	r3, r10
	orr	r1, r1, #805306368
	b	.LBB0_15
.LBB0_15:                               @ %if.then85
	bl	copysign
	mov	r8, r0
	mov	r10, r1
	mov	r0, r6
	b	.LBB0_16
.LBB0_16:                               @ %if.then85
	mov	r1, r7
	bl	sin
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_17
.LBB0_17:                               @ %if.then85
	mov	r0, r6
	mov	r1, r7
	bl	cos
	mov	r3, #1048576
	b	.LBB0_18
.LBB0_18:                               @ %if.then85
	mov	r6, r0
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
	b	.LBB0_19
.LBB0_19:                               @ %if.then85
	mov	r2, #0
	stm	r9, {r8, r10}
	orr	r3, r3, #1073741824
	bl	__aeabi_dmul
	b	.LBB0_20
.LBB0_20:                               @ %if.then85
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	ldr	r4, [sp, #8]            @ 4-byte Reload
	b	.LBB0_21
.LBB0_21:                               @ %if.then85
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	mov	r1, r4
	b	.LBB0_22
.LBB0_22:                               @ %if.then85
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r11
	mov	r1, r4
	bl	__aeabi_dmul
	b	.LBB0_49
.LBB0_23:                               @ %if.then72
	mov	r0, r6
	mov	r1, r7
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_24
.LBB0_24:                               @ %if.then72
	bl	__aeabi_dsub
	mov	r4, r0
	mov	r5, r1
	mov	r0, r9
	b	.LBB0_25
.LBB0_25:                               @ %if.then72
	stm	r9, {r4, r5}
	str	r4, [r0, #8]!
	mov	r8, r4
	mov	r10, r5
	str	r5, [r0, #4]
	b	.LBB0_51
.LBB0_26:                               @ %do.body15
	bic	r0, r7, #-2147483648
	add	r10, r10, #-1073741824
	eor	r0, r0, r1
	orrs	r0, r6, r0
	beq	.LBB0_30
	b	.LBB0_27
.LBB0_27:                               @ %cond.false45
	mov	r0, r6
	mov	r1, r7
	bl	sin
	mov	r4, r0
	b	.LBB0_28
.LBB0_28:                               @ %cond.false45
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	cos
	b	.LBB0_29
.LBB0_29:                               @ %cond.false45
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r6, r0
	mov	r7, r1
	b	.LBB0_30
.LBB0_30:                               @ %cond.end49
	mov	r0, #0
	mov	r1, #0
	mov	r2, r6
	mov	r3, r7
	b	.LBB0_31
.LBB0_31:                               @ %cond.end49
	bl	copysign
	mov	r4, r0
	mov	r5, r1
	stm	r9, {r8, r10}
	b	.LBB0_50
.LBB0_32:                               @ %if.end103
	mov	r0, r6
	mov	r1, r7
	bl	tan
	mov	r2, r0
	b	.LBB0_33
.LBB0_33:                               @ %if.end103
	mov	r3, r1
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	__aeabi_dmul
	b	.LBB0_34
.LBB0_34:                               @ %if.end103
	mov	r3, #267386880
	mov	r2, #0
	orr	r3, r3, #805306368
	mov	r6, r3
	b	.LBB0_35
.LBB0_35:                               @ %if.end103
	bl	__aeabi_dadd
	mov	r11, r0
	mov	r7, r1
	mov	r0, r8
	b	.LBB0_36
.LBB0_36:                               @ %if.end103
	mov	r1, r10
	bl	sinh
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_37
.LBB0_37:                               @ %if.end103
	mov	r2, r4
	mov	r3, r5
                                        @ kill: R0<def> R4<kill>
                                        @ kill: R1<def> R5<kill>
	b	.LBB0_38
.LBB0_38:                               @ %if.end103
	bl	__aeabi_dmul
	mov	r2, #0
	mov	r3, r6
	bl	__aeabi_dadd
	b	.LBB0_39
.LBB0_39:                               @ %if.end103
	bl	sqrt
	str	r0, [sp]                @ 4-byte Spill
	mov	r10, r1
	mov	r0, r4
	b	.LBB0_40
.LBB0_40:                               @ %if.end103
	mov	r1, r5
	mov	r2, r11
	mov	r3, r7
	mov	r8, r11
	b	.LBB0_41
.LBB0_41:                               @ %if.end103
	mov	r11, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_42
.LBB0_42:                               @ %if.end103
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, #0
	b	.LBB0_43
.LBB0_43:                               @ %if.end103
	mov	r3, r6
	bl	__aeabi_dadd
	ldr	r2, [sp]                @ 4-byte Reload
	mov	r7, r0
	b	.LBB0_44
.LBB0_44:                               @ %if.end103
	mov	r6, r1
	mov	r0, r8
	mov	r1, r11
	mov	r3, r10
	b	.LBB0_45
.LBB0_45:                               @ %if.end103
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	b	.LBB0_46
.LBB0_46:                               @ %if.end103
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r2, r7
	mov	r3, r6
	b	.LBB0_47
.LBB0_47:                               @ %if.end103
	bl	__aeabi_ddiv
	mov	r8, r0
	mov	r10, r1
	mov	r2, r7
	b	.LBB0_48
.LBB0_48:                               @ %if.end103
	mov	r3, r6
	stm	r9, {r8, r10}
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__aeabi_ddiv
	b	.LBB0_49
.LBB0_49:                               @ %return
	mov	r4, r0
	mov	r5, r1
	b	.LBB0_50
.LBB0_50:                               @ %return
	mov	r0, r9
	str	r4, [r0, #8]!
	str	r5, [r0, #4]
	b	.LBB0_51
.LBB0_51:                               @ %return
	stm	r9, {r8, r10}
	stm	r0, {r4, r5}
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	ctanh, .Ltmp0-ctanh
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
