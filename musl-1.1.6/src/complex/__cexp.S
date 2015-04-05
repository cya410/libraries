.section __cexp_text
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
	.file	"src/complex/__cexp.bc"
	.globl	__ldexp_cexp
	.align	2
	.type	__ldexp_cexp,%function
.section bb0_0
__ldexp_cexp:                           @ @__ldexp_cexp
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
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r7, .LCPI0_3
	ldr	r6, .LCPI0_4
	mov	r4, r0
	b	.LBB0_4
.LCPI0_3:
	.long	431623588               @ 0x19ba0da4
.LCPI0_4:
	.long	3230890979              @ 0xc0937be3
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r0, r2
	mov	r1, r3
	mov	r2, r7
	mov	r3, r6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	bl	__aeabi_dadd
	bl	exp
	mov	r10, r0
	ldr	r0, [sp, #48]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	ldr	r9, [sp, #44]
	add	r0, r0, r1, lsr #20
	sub	r0, r0, #247
	add	r6, r0, r0, lsr #31
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	sub	r5, r0, r6, asr #1
	ldr	r0, .LCPI0_5
	and	r0, r1, r0
	mov	r1, r9
	b	.LBB0_8
.LCPI0_5:
	.long	1048575                 @ 0xfffff
.section bb0_8
.LBB0_8:                                @ %entry
	orr	r0, r0, #266338304
	orr	r11, r0, #1879048192
	ldr	r0, [sp, #40]
	bl	cos
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %entry
	mov	r2, r10
	mov	r3, r11
	bl	__aeabi_dmul
	mov	r2, r0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %entry
	asr	r0, r6, #1
	mov	r6, #267386880
	mov	r3, r1
	orr	r6, r6, #805306368
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %entry
	add	r7, r6, r0, lsl #20
	mov	r0, #0
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %entry
	add	r5, r6, r5, lsl #20
	mov	r2, #0
	mov	r3, r5
	bl	__aeabi_dmul
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %entry
	mov	r6, r0
	ldr	r0, [sp, #40]
	mov	r8, r1
	mov	r1, r9
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %entry
	bl	sin
	mov	r2, r10
	mov	r3, r11
	stm	r4, {r6, r8}
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %entry
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %entry
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, #0
	mov	r3, r5
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %entry
	bl	__aeabi_dmul
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__ldexp_cexp, .Ltmp0-__ldexp_cexp
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
