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
	.file	"src/time/__tm_to_secs.bc"
	.globl	__tm_to_secs
	.align	2
	.type	__tm_to_secs,%function
__tm_to_secs:                           @ @__tm_to_secs
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	ldr	r5, [r4, #16]
	ldr	r0, [r4, #20]
	cmp	r5, #12
	blo	.LBB0_6
	b	.LBB0_3
.LBB0_3:                                @ %if.then
	ldr	r1, .LCPI0_0
	smull	r2, r3, r5, r1
	asr	r1, r3, #1
	add	r1, r1, r3, lsr #31
	b	.LBB0_4
.LCPI0_0:
	.long	715827883               @ 0x2aaaaaab
.LBB0_4:                                @ %if.then
	add	r2, r1, r1, lsl #1
	sub	r5, r5, r2, lsl #2
	add	r1, r1, r5, asr #31
	asr	r2, r1, #31
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	adds	r3, r1, r0
	adc	r1, r2, r0, asr #31
	cmp	r5, #0
	mov	r0, r3
	addlt	r5, r5, #12
	b	.LBB0_7
.LBB0_6:
	asr	r1, r0, #31
	b	.LBB0_7
.LBB0_7:                                @ %if.end9
	add	r2, sp, #4
	bl	__year_to_secs
	mov	r7, r1
	ldr	r1, [sp, #4]
	b	.LBB0_8
.LBB0_8:                                @ %if.end9
	mov	r6, r0
	mov	r0, r5
	bl	__month_to_secs
	asr	r1, r0, #31
	b	.LBB0_9
.LBB0_9:                                @ %if.end9
	adds	r0, r0, r6
	mov	r5, #4480
	adc	r1, r1, r7
	ldm	r4, {r2, r3, r7}
	b	.LBB0_10
.LBB0_10:                               @ %if.end9
	ldr	r6, [r4, #12]
	orr	r5, r5, #81920
	sub	r6, r6, #1
	smlal	r0, r1, r6, r5
	b	.LBB0_11
.LBB0_11:                               @ %if.end9
	mov	r6, #3600
	smlal	r0, r1, r7, r6
	mov	r7, #60
	smlal	r0, r1, r3, r7
	b	.LBB0_12
.LBB0_12:                               @ %if.end9
	adds	r0, r0, r2
	adc	r1, r1, r2, asr #31
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__tm_to_secs, .Ltmp0-__tm_to_secs
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
