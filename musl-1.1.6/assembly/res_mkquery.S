.section res_mkquery_text
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
	.file	"src/network/res_mkquery.bc"
	.globl	__res_mkquery
	.align	2
	.type	__res_mkquery,%function
.section bb0_0
__res_mkquery:                          @ @__res_mkquery
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#296
	sub	sp, sp, #296
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r1
	mov	r10, r0
	mov	r1, #255
	mov	r9, r3
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r8, r2
	mov	r0, r5
	bl	strnlen
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	sub	r0, r6, #1
	mvn	r4, #0
	ldrb	r1, [r5, r0]
	cmp	r1, #46
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	moveq	r6, r0
	cmp	r6, #0
	mov	r0, r6
	addne	r0, r0, #1
	cmp	r6, #253
	bhi	.LBB0_26
	b	.LBB0_7
.section bb0_7
.LBB0_7:
	add	r4, r0, #17
	b	.LBB0_9
.section bb0_8
.LBB0_8:
	mov	r6, #0
	mov	r4, #17
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %lor.lhs.false
	orr	r0, r9, r8
	cmp	r0, #255
	cmpls	r10, #15
	bhi	.LBB0_25
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %lor.lhs.false
	ldr	r0, [sp, #344]
	cmp	r4, r0
	bgt	.LBB0_25
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end19
	add	r7, sp, #16
	mov	r1, #0
	mov	r2, r4
	mov	r0, r7
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end19
	bl	memset
	mov	r0, #1
	mov	r2, r6
	orr	r1, r0, r10, lsl #3
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end19
	strb	r1, [sp, #18]
	strb	r0, [sp, #21]
	add	r0, r7, #13
	mov	r1, r5
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end19
	bl	memcpy
	ldrb	r1, [sp, #29]
	mov	r0, #13
	cmp	r1, #0
	beq	.LBB0_21
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %for.cond29.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_17 Depth 2
	add	r1, r7, r0
	mov	r2, #0
	b	.LBB0_17
.section bb0_16
.LBB0_16:                               @ %for.inc
                                        @   in Loop: Header=BB0_17 Depth=2
	add	r2, r2, #1
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %for.cond29
                                        @   Parent Loop BB0_15 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r3, [r1, r2]
	cmp	r3, #0
	cmpne	r3, #46
	bne	.LBB0_16
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %for.end
                                        @   in Loop: Header=BB0_15 Depth=1
	sub	r3, r2, #1
	cmp	r3, #62
	bhi	.LBB0_25
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end43
                                        @   in Loop: Header=BB0_15 Depth=1
	strb	r2, [r1, #-1]
	add	r1, r1, r2
	add	r3, r0, r2
	ldrb	r1, [r1, #1]
	add	r0, r3, #1
	cmp	r1, #0
	bne	.LBB0_15
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %for.end50.loopexit
	add	r0, r3, #1
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %for.end50
	ldr	r5, [sp, #340]
	add	r0, r0, r7
	add	r1, sp, #8
	strb	r9, [r0, #1]
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %for.end50
	strb	r8, [r0, #3]
	mov	r0, #0
	bl	clock_gettime
	ldr	r0, [sp, #12]
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %for.end50
	mov	r2, r4
	add	r0, r0, r0, lsr #16
	lsr	r1, r0, #8
	strb	r1, [sp, #16]
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %for.end50
	strb	r0, [sp, #17]
	mov	r0, r5
	mov	r1, r7
	bl	memcpy
	b	.LBB0_26
.section bb0_25
.LBB0_25:
	mvn	r4, #0
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %cleanup
	mov	r0, r4
	add	sp, sp, #296
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	__res_mkquery, .Ltmp0-__res_mkquery
	.cantunwind
	.fnend


	.weak	res_mkquery
res_mkquery = __res_mkquery
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
