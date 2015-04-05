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
	.file	"src/multibyte/mbrtowc.bc"
	.globl	mbrtowc
	.align	2
	.type	mbrtowc,%function
mbrtowc:                                @ @mbrtowc
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
	ldr	r12, .LCPI0_2
	cmp	r3, #0
	b	.LBB0_3
.LCPI0_2:
	.long	mbrtowc.internal_state
.LBB0_3:                                @ %entry
	movne	r12, r3
	cmp	r1, #0
	ldr	r3, [r12]
	beq	.LBB0_13
	b	.LBB0_4
.LBB0_4:                                @ %if.else
	add	lr, sp, #4
	cmp	r0, #0
	movne	lr, r0
	mvn	r0, #1
	cmp	r2, #0
	beq	.LBB0_18
	b	.LBB0_5
.LBB0_5:                                @ %if.end12
	cmp	r3, #0
	beq	.LBB0_14
	b	.LBB0_6
.LBB0_6:
	mov	r6, r2
	b	.LBB0_7
.LBB0_7:                                @ %if.then30
	ldrb	r5, [r1]
	mvn	r4, #15
	lsr	r7, r5, #3
	add	r4, r4, r5, lsr #3
	b	.LBB0_8
.LBB0_8:                                @ %if.then30
	add	r7, r7, r3, asr #26
	orr	r4, r4, r7
	cmp	r4, #7
	bhi	.LBB0_17
	b	.LBB0_9
.LBB0_9:                                @ %loop.preheader
	add	r4, r1, #1
	sub	r1, r6, #1
	b	.LBB0_10
.LBB0_10:                               @ %loop
                                        @ =>This Inner Loop Header: Depth=1
	and	r5, r5, #255
	sub	r5, r5, #128
	orr	r3, r5, r3, lsl #6
	cmp	r3, #0
	bge	.LBB0_19
	b	.LBB0_11
.LBB0_11:                               @ %if.end48
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r1, #0
	beq	.LBB0_22
	b	.LBB0_12
.LBB0_12:                               @ %if.then50
                                        @   in Loop: Header=BB0_10 Depth=1
	ldrb	r5, [r4], #1
	sub	r1, r1, #1
	and	r6, r5, #192
	cmp	r6, #128
	beq	.LBB0_10
	b	.LBB0_17
.LBB0_13:                               @ %if.then2
	mov	r0, #0
	cmp	r3, #0
	bne	.LBB0_17
	b	.LBB0_18
.LBB0_14:                               @ %if.then14
	ldrb	r3, [r1]
	lsl	r4, r3, #24
	asr	r4, r4, #24
	cmp	r4, #0
	blt	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               @ %if.then16
	ands	r0, r4, #255
	str	r3, [lr]
	movne	r0, #1
	b	.LBB0_18
.LBB0_16:                               @ %if.end20
	sub	r3, r3, #194
	cmp	r3, #50
	bls	.LBB0_20
	b	.LBB0_17
.LBB0_17:                               @ %ilseq
	mov	r0, #0
	str	r0, [r12]
	bl	__errno_location
	mov	r1, #84
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB0_18
.LBB0_18:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.LBB0_19:                               @ %if.then46
	mov	r0, #0
	str	r3, [lr]
	str	r0, [r12]
	sub	r0, r2, r1
	b	.LBB0_18
.LBB0_20:                               @ %if.end28
	ldr	r4, .LCPI0_3
	subs	r6, r2, #1
	ldr	r3, [r4, r3, lsl #2]
	beq	.LBB0_22
	b	.LBB0_21
.LCPI0_3:
	.long	__fsmu8
.LBB0_21:
	add	r1, r1, #1
	b	.LBB0_7
.LBB0_22:                               @ %if.end58
	str	r3, [r12]
	b	.LBB0_18
.Ltmp0:
	.size	mbrtowc, .Ltmp0-mbrtowc
	.cantunwind
	.fnend

	.type	mbrtowc.internal_state,%object @ @mbrtowc.internal_state
	.local	mbrtowc.internal_state
	.comm	mbrtowc.internal_state,4,4
	.hidden	__fsmu8

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
