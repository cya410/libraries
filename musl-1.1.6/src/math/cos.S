.section cos_text
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
	.file	"src/math/cos.bc"
	.globl	cos
	.align	2
	.type	cos,%function
.section bb0_0
cos:                                    @ @cos
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	ldr	r3, .LCPI0_2
	bic	r2, r1, #-2147483648
	cmp	r2, r3
	bhi	.LBB0_5
	b	.LBB0_2
.LCPI0_2:
	.long	1072243195              @ 0x3fe921fb
.section bb0_2
.LBB0_2:                                @ %if.then
	ldr	r3, .LCPI0_3
	cmp	r2, r3
	bhi	.LBB0_8
	b	.LBB0_3
.LCPI0_3:
	.long	1044816029              @ 0x3e46a09d
.section bb0_3
.LBB0_3:                                @ %do.body5
	mov	r3, #124780544
	mov	r2, #0
	mov	r4, #0
	orr	r3, r3, #1073741824
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %do.body5
	bl	__aeabi_dadd
	str	r1, [sp, #12]
	mov	r1, #267386880
	str	r0, [sp, #8]
	orr	r1, r1, #805306368
	b	.LBB0_14
.section bb0_5
.LBB0_5:                                @ %if.end7
	mov	r3, #267386880
	orr	r3, r3, #1879048192
	cmp	r2, r3
	blo	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then10
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dsub
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %return
	mov	r4, r0
	b	.LBB0_14
.section bb0_8
.LBB0_8:                                @ %if.end
	mov	r2, #0
	mov	r3, #0
	add	sp, sp, #32
	pop	{r4, lr}
	b	__cos
.section bb0_9
.LBB0_9:                                @ %if.end11
	add	r2, sp, #16
	bl	__rem_pio2
	and	r0, r0, #3
	cmp	r0, #2
	beq	.LBB0_12
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end11
	cmp	r0, #1
	bne	.LBB0_15
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %sw.bb16
	add	r3, sp, #16
	mov	r4, #1
	ldm	r3, {r0, r1, r2, r3}
	str	r4, [sp]
	bl	__sin
	b	.LBB0_13
.section bb0_12
.LBB0_12:                               @ %sw.bb21
	add	r3, sp, #16
	ldm	r3, {r0, r1, r2, r3}
	bl	__cos
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %return
	mov	r4, r0
	eor	r1, r1, #-2147483648
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %return
	mov	r0, r4
	add	sp, sp, #32
	pop	{r4, lr}
	mov	pc, lr
.section bb0_15
.LBB0_15:                               @ %if.end11
	cmp	r0, #0
	bne	.LBB0_17
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %sw.bb
	add	r3, sp, #16
	ldm	r3, {r0, r1, r2, r3}
	bl	__cos
	b	.LBB0_7
.section bb0_17
.LBB0_17:                               @ %sw.default
	add	r3, sp, #16
	mov	r4, #1
	ldm	r3, {r0, r1, r2, r3}
	str	r4, [sp]
	bl	__sin
	b	.LBB0_7
.Ltmp0:
	.size	cos, .Ltmp0-cos
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
