.section trunc_text
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
	.file	"src/math/trunc.bc"
	.globl	trunc
	.align	2
	.type	trunc,%function
.section bb0_0
trunc:                                  @ @trunc
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r1
	ldr	r1, .LCPI0_0
	b	.LBB0_3
.LCPI0_0:
	.long	4294966285              @ 0xfffffc0d
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r0
	mov	r0, #255
	orr	r0, r0, #1792
	and	r0, r0, r4, lsr #20
	add	r0, r0, r1
	cmp	r0, #63
	bgt	.LBB0_9
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	mvn	r1, #0
	cmp	r0, #12
	sub	r3, r0, #32
	lsr	r6, r1, r0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	ror	r7, r1, r0
	mvnlt	r6, #-2147483648
	cmp	r3, #0
	lsrge	r7, r1, r3
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	cmp	r0, #12
	and	r2, r6, r4
	mvnlt	r7, #0
	and	r0, r7, r5
	orrs	r0, r0, r2
	beq	.LBB0_9
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %do.body
	mov	r3, #124780544
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %do.body
	orr	r3, r3, #1073741824
	bl	__aeabi_dadd
	bic	r5, r5, r7
	bic	r4, r4, r6
	str	r1, [sp, #4]
	str	r0, [sp]
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	mov	r0, r5
	mov	r1, r4
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	trunc, .Ltmp0-trunc
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
