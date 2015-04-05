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
	.file	"src/multibyte/mbtowc.bc"
	.globl	mbtowc
	.align	2
	.type	mbtowc,%function
mbtowc:                                 @ @mbtowc
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r3, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB0_19
	b	.LBB0_2
.LBB0_2:                                @ %if.end
	cmp	r2, #0
	beq	.LBB0_18
	b	.LBB0_3
.LBB0_3:                                @ %if.end3
	add	r12, sp, #4
	cmp	r3, #0
	movne	r12, r3
	ldrb	r3, [r1]
	b	.LBB0_4
.LBB0_4:                                @ %if.end3
	lsl	r0, r3, #24
	asr	r0, r0, #24
	cmp	r0, #0
	blt	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.then8
	ands	r0, r0, #255
	str	r3, [r12]
	movne	r0, #1
	b	.LBB0_19
.LBB0_6:                                @ %if.end12
	sub	r0, r3, #194
	cmp	r0, #50
	bhi	.LBB0_18
	b	.LBB0_7
.LBB0_7:                                @ %if.end17
	ldr	r3, .LCPI0_0
	cmp	r2, #3
	ldr	r3, [r3, r0, lsl #2]
	bhi	.LBB0_9
	b	.LBB0_8
.LCPI0_0:
	.long	__fsmu8
.LBB0_8:                                @ %land.lhs.true
	add	r0, r2, r2, lsl #1
	mvn	r2, #5
	add	r0, r2, r0, lsl #1
	mov	r2, #-2147483648
	tst	r3, r2, lsr r0
	bne	.LBB0_18
	b	.LBB0_9
.LBB0_9:                                @ %if.end25
	ldrb	r2, [r1, #1]
	mvn	r0, #15
	add	lr, r0, r2, lsr #3
	lsr	r0, r2, #3
	b	.LBB0_10
.LBB0_10:                               @ %if.end25
	add	r0, r0, r3, asr #26
	orr	r0, lr, r0
	cmp	r0, #7
	bhi	.LBB0_18
	b	.LBB0_11
.LBB0_11:                               @ %if.end34
	sub	r0, r2, #128
	orr	r2, r0, r3, lsl #6
	cmp	r2, #0
	blt	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %if.then42
	str	r2, [r12]
	mov	r0, #2
	b	.LBB0_19
.LBB0_13:                               @ %if.end43
	ldrb	r0, [r1, #2]
	and	r3, r0, #192
	cmp	r3, #128
	bne	.LBB0_18
	b	.LBB0_14
.LBB0_14:                               @ %if.end49
	sub	r0, r0, #128
	orr	r2, r0, r2, lsl #6
	cmp	r2, #0
	blt	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %if.then57
	str	r2, [r12]
	mov	r0, #3
	b	.LBB0_19
.LBB0_16:                               @ %if.end58
	ldrb	r0, [r1, #3]
	and	r1, r0, #192
	cmp	r1, #128
	bne	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               @ %if.end64
	sub	r0, r0, #128
	orr	r0, r0, r2, lsl #6
	str	r0, [r12]
	mov	r0, #4
	b	.LBB0_19
.LBB0_18:                               @ %ilseq
	bl	__errno_location
	mov	r1, #84
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB0_19
.LBB0_19:                               @ %return
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	mbtowc, .Ltmp0-mbtowc
	.cantunwind
	.fnend

	.hidden	__fsmu8

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
