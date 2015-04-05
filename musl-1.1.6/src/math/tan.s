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
	.file	"src/math/tan.bc"
	.globl	tan
	.align	2
	.type	tan,%function
tan:                                    @ @tan
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#32
	sub	sp, sp, #32
	mov	r5, r0
	ldr	r0, .LCPI0_0
	b	.LBB0_3
.LCPI0_0:
	.long	1072243195              @ 0x3fe921fb
.LBB0_3:                                @ %entry
	mov	r4, r1
	bic	r6, r4, #-2147483648
	cmp	r6, r0
	bhi	.LBB0_9
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	lsr	r0, r6, #22
	cmp	r0, #248
	bhi	.LBB0_11
	b	.LBB0_5
.LBB0_5:                                @ %do.body5
	mov	r3, #141557760
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_6
.LBB0_6:                                @ %do.body5
	orr	r3, r3, #805306368
	bl	__aeabi_dmul
	mov	r3, #124780544
	mov	r8, r0
	b	.LBB0_7
.LBB0_7:                                @ %do.body5
	mov	r7, r1
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_8
.LBB0_8:                                @ %do.body5
	orr	r3, r3, #1073741824
	bl	__aeabi_dadd
	cmp	r6, #1048576
	movlo	r1, r7
	movlo	r0, r8
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	b	.LBB0_15
.LBB0_9:                                @ %if.end9
	mov	r0, #267386880
	orr	r0, r0, #1879048192
	cmp	r6, r0
	blo	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               @ %if.then12
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dsub
	b	.LBB0_14
.LBB0_11:                               @ %if.end
	mov	r0, #0
	mov	r1, r4
	mov	r2, #0
	mov	r3, #0
	str	r0, [sp]
	mov	r0, r5
	bl	__tan
	b	.LBB0_16
.LBB0_12:                               @ %if.end13
	add	r2, sp, #16
	mov	r0, r5
	mov	r1, r4
	bl	__rem_pio2
	b	.LBB0_13
.LBB0_13:                               @ %if.end13
	add	r3, sp, #16
	and	r7, r0, #1
	ldm	r3, {r0, r1, r2, r3}
	str	r7, [sp]
	bl	__tan
	b	.LBB0_14
.LBB0_14:                               @ %return
	mov	r5, r0
	mov	r4, r1
	b	.LBB0_15
.LBB0_15:                               @ %return
	mov	r0, r5
	mov	r1, r4
	b	.LBB0_16
.LBB0_16:                               @ %return
	add	sp, sp, #32
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	tan, .Ltmp0-tan
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
