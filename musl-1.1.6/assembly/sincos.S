.section sincos_text
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
	.file	"src/math/sincos.bc"
	.globl	sincos
	.align	2
	.type	sincos,%function
.section bb0_0
sincos:                                 @ @sincos
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#36
	sub	sp, sp, #36
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r7, r0
	ldr	r0, .LCPI0_2
	mov	r6, r1
	b	.LBB0_4
.LCPI0_2:
	.long	1072243195              @ 0x3fe921fb
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r10, r3
	mov	r5, r2
	bic	r4, r6, #-2147483648
	cmp	r4, r0
	bhi	.LBB0_12
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	ldr	r0, .LCPI0_3
	cmp	r4, r0
	bhi	.LBB0_14
	b	.LBB0_6
.LCPI0_3:
	.long	1044816029              @ 0x3e46a09d
.section bb0_6
.LBB0_6:                                @ %do.body5
	mov	r3, #141557760
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %do.body5
	mov	r11, #0
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	mov	r3, #124780544
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %do.body5
	mov	r8, r0
	mov	r9, r1
	mov	r0, r7
	mov	r1, r6
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %do.body5
	mov	r2, #0
	orr	r3, r3, #1073741824
	bl	__aeabi_dadd
	cmp	r4, #1048576
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %do.body5
	movlo	r1, r9
	movlo	r0, r8
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %do.body5
	mov	r0, #267386880
	str	r7, [r5]
	str	r6, [r5, #4]
	str	r11, [r10]
	orr	r0, r0, #805306368
	str	r0, [r10, #4]
	b	.LBB0_27
.section bb0_12
.LBB0_12:                               @ %if.end10
	mov	r0, #267386880
	orr	r0, r0, #1879048192
	cmp	r4, r0
	blo	.LBB0_17
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then13
	mov	r0, r7
	mov	r1, r6
	mov	r2, r7
	mov	r3, r6
	bl	__aeabi_dsub
	stm	r10, {r0, r1}
	stm	r5, {r0, r1}
	b	.LBB0_27
.section bb0_14
.LBB0_14:                               @ %if.end
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end
	str	r0, [sp]
	mov	r0, r7
	bl	__sin
	stm	r5, {r0, r1}
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	__cos
	b	.LBB0_26
.section bb0_17
.LBB0_17:                               @ %if.end14
	add	r2, sp, #16
	mov	r0, r7
	mov	r1, r6
	bl	__rem_pio2
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end14
	ldr	r7, [sp, #16]
	add	r3, sp, #20
	and	r4, r0, #3
	mov	r6, #1
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end14
	ldm	r3, {r1, r2, r3}
	str	r6, [sp]
	mov	r0, r7
	bl	__sin
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end14
	add	r3, sp, #16
	mov	r6, r0
	mov	r7, r1
	ldm	r3, {r0, r1, r2, r3}
	bl	__cos
	cmp	r4, #2
	beq	.LBB0_23
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end14
	cmp	r4, #1
	bne	.LBB0_24
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %sw.bb22
	stm	r5, {r0, r1}
	eor	r0, r7, #-2147483648
	str	r6, [r10]
	str	r0, [r10, #4]
	b	.LBB0_27
.section bb0_23
.LBB0_23:                               @ %sw.bb24
	eor	r2, r7, #-2147483648
	str	r6, [r5]
	eor	r1, r1, #-2147483648
	str	r2, [r5, #4]
	b	.LBB0_26
.section bb0_24
.LBB0_24:                               @ %if.end14
	cmp	r4, #0
	bne	.LBB0_28
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %sw.bb
	stm	r5, {r6, r7}
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %sw.epilog
	stm	r10, {r0, r1}
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %sw.epilog
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_28
.LBB0_28:                               @ %sw.default
	eor	r1, r1, #-2147483648
	stm	r5, {r0, r1}
	stm	r10, {r6, r7}
	b	.LBB0_27
.Ltmp0:
	.size	sincos, .Ltmp0-sincos
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
