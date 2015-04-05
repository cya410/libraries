.section __year_to_secs_text
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
	.file	"src/time/__year_to_secs.bc"
	.globl	__year_to_secs
	.align	2
	.type	__year_to_secs,%function
.section bb0_0
__year_to_secs:                         @ @__year_to_secs
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r2
	subs	r2, r0, #2
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r7, #0
	sbc	r3, r1, #0
	cmp	r2, #136
	movhi	r7, #1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, r7
	cmp	r3, #0
	bne	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	sub	r2, r0, #68
	asr	r1, r2, #2
	tst	r2, #3
	beq	.LBB0_16
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.else
	cmp	r4, #0
	beq	.LBB0_19
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then7
	mov	r2, #0
	b	.LBB0_18
.section bb0_8
.LBB0_8:                                @ %if.end13
	cmp	r4, #0
	mov	r3, #0
	mov	r8, #0
	moveq	r2, #0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end13
	addeq	r4, sp, #4
	streq	r2, [sp, #4]
	subs	r5, r0, #100
	mov	r2, #400
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end13
	sbc	r6, r1, #0
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_ldivmod
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end13
	mov	r7, r0
	mov	r0, r5
	mov	r1, r6
	mov	r2, #400
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end13
	mov	r3, #0
	bl	__moddi3
	cmp	r0, #0
	add	r1, r7, r0, asr #31
	addlt	r0, r0, #400
	cmp	r0, #0
	beq	.LBB0_21
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.else31
	cmp	r0, #200
	blt	.LBB0_22
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then34
	cmp	r0, #300
	blt	.LBB0_23
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.then37
	sub	r0, r0, #300
	mov	r8, #3
	b	.LBB0_24
.section bb0_16
.LBB0_16:                               @ %if.then3
	sub	r1, r1, #1
	cmp	r4, #0
	beq	.LBB0_19
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then5
	mov	r2, #1
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end9
	str	r2, [r4]
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end9
	mov	r2, #4480
	orr	r2, r2, #81920
	mul	r3, r1, r2
	ldr	r1, .LCPI0_3
	b	.LBB0_20
.LCPI0_3:
	.long	31536000                @ 0x1e13380
.section bb0_20
.LBB0_20:                               @ %if.end9
	mla	r2, r0, r1, r3
	ldr	r0, .LCPI0_6
	add	r0, r2, r0
	asr	r1, r0, #31
	b	.LBB0_30
.LCPI0_6:
	.long	2087447296              @ 0x7c6beb00
.section bb0_21
.LBB0_21:                               @ %if.then30
	mov	r2, #1
	b	.LBB0_26
.section bb0_22
.LBB0_22:                               @ %if.else42
	cmp	r0, #99
	mov	r8, #0
	movgt	r8, #1
	subgt	r0, r0, #100
	b	.LBB0_24
.section bb0_23
.LBB0_23:                               @ %if.else39
	sub	r0, r0, #200
	mov	r8, #2
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end49
	mov	r2, #0
	cmp	r0, #0
	beq	.LBB0_26
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.else52
	tst	r0, #3
	lsr	r0, r0, #2
	moveq	r2, #1
	str	r2, [r4]
	b	.LBB0_27
.section bb0_26
.LBB0_26:                               @ %if.end57
	str	r2, [r4]
	mov	r0, #0
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end57
	ldr	r3, .LCPI0_4
	umull	r4, r7, r5, r3
	mla	r5, r6, r3, r7
	mov	r3, #97
	b	.LBB0_28
.LCPI0_4:
	.long	31536000                @ 0x1e13380
.section bb0_28
.LBB0_28:                               @ %if.end57
	mul	r7, r1, r3
	add	r1, r8, r8, lsl #1
	add	r1, r7, r1, lsl #3
	add	r0, r1, r0
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end57
	mov	r1, #4480
	sub	r0, r0, r2
	orr	r1, r1, #81920
	smlal	r4, r5, r0, r1
	ldr	r0, .LCPI0_5
	adds	r0, r4, r0
	adc	r1, r5, #0
	b	.LBB0_30
.LCPI0_5:
	.long	946771200               @ 0x386e9500
.section bb0_30
.LBB0_30:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	__year_to_secs, .Ltmp0-__year_to_secs
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
