.section fmodf_text
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
	.file	"src/math/fmodf.bc"
	.globl	fmodf
	.align	2
	.type	fmodf,%function
.section bb0_0
fmodf:                                  @ @fmodf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r6, r0
	mov	r0, #0
	cmp	r0, r1, lsl #1
	beq	.LBB0_7
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %cond.true
	mov	r2, #1065353216
	bic	r0, r1, #-2147483648
	orr	r2, r2, #1073741824
	cmp	r0, r2
	bhi	.LBB0_7
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %cond.true
	mov	r2, #255
	and	r0, r2, r6, lsr #23
	cmp	r0, #255
	beq	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	lsl	r4, r1, #1
	lsl	r5, r6, #1
	cmp	r5, r4
	bls	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end40
	and	r2, r2, r1, lsr #23
	cmp	r0, #0
	beq	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.else
	ldr	r3, .LCPI0_0
	and	r3, r6, r3
	orr	r3, r3, #8388608
	b	.LBB0_13
.LCPI0_0:
	.long	8388607                 @ 0x7fffff
.section bb0_7
.LBB0_7:                                @ %if.then
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	bl	__aeabi_fdiv
	b	.LBB0_34
.section bb0_8
.LBB0_8:                                @ %if.then31
	mov	r0, r6
	mov	r1, #0
	bl	__aeabi_fmul
	cmp	r5, r4
	movne	r0, r6
	b	.LBB0_34
.section bb0_9
.LBB0_9:                                @ %if.then41
	lsl	r3, r6, #9
	mov	r0, #0
	b	.LBB0_11
.section bb0_10
.LBB0_10:                               @ %for.inc
                                        @   in Loop: Header=BB0_11 Depth=1
	lsl	r3, r3, #1
	sub	r0, r0, #1
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.inc
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r3, #0
	bge	.LBB0_10
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.end
	rsb	r3, r0, #1
	lsl	r3, r6, r3
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end49
	cmp	r2, #0
	beq	.LBB0_15
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.else67
	ldr	r5, .LCPI0_1
	and	r1, r1, r5
	orr	r4, r1, #8388608
	b	.LBB0_19
.LCPI0_1:
	.long	8388607                 @ 0x7fffff
.section bb0_15
.LBB0_15:                               @ %if.then51
	lsl	r5, r1, #9
	mov	r2, #0
	b	.LBB0_17
.section bb0_16
.LBB0_16:                               @ %for.inc59
                                        @   in Loop: Header=BB0_17 Depth=1
	lsl	r5, r5, #1
	sub	r2, r2, #1
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %for.inc59
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r5, #0
	bge	.LBB0_16
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %for.end62
	rsb	r5, r2, #1
	lsl	r4, r1, r5
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %for.cond73.preheader
	sub	r1, r3, r4
	mov	r5, #0
	cmp	r1, #0
	movge	r5, #1
	b	.LBB0_21
.section bb0_20
.LBB0_20:                               @ %if.end88
                                        @   in Loop: Header=BB0_21 Depth=1
	rsb	r1, r4, r3, lsl #1
	mov	r5, #0
	sub	r0, r0, #1
	lsl	r3, r3, #1
	cmp	r1, #0
	movge	r5, #1
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %for.cond73.preheader
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r0, r2
	ble	.LBB0_24
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %for.body76
                                        @   in Loop: Header=BB0_21 Depth=1
	tst	r5, #1
	beq	.LBB0_20
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.then82
                                        @   in Loop: Header=BB0_21 Depth=1
	cmp	r3, r4
	mov	r3, r1
	bne	.LBB0_20
	b	.LBB0_26
.section bb0_24
.LBB0_24:                               @ %for.end92
	cmp	r5, #1
	bne	.LBB0_27
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.then98
	cmp	r3, r4
	bne	.LBB0_29
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.then85
	mov	r0, r6
	mov	r1, #0
	bl	__aeabi_fmul
	b	.LBB0_34
.section bb0_27
.LBB0_27:
	mov	r1, r3
	b	.LBB0_29
.section bb0_28
.LBB0_28:                               @ %for.inc110
                                        @   in Loop: Header=BB0_29 Depth=1
	sub	r0, r0, #1
	lsl	r1, r1, #1
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %for.inc110
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r1, #8388608
	blo	.LBB0_28
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %for.end113
	and	r2, r6, #-2147483648
	cmp	r0, #1
	blt	.LBB0_32
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.then116
	sub	r1, r1, #8388608
	orr	r0, r1, r0, lsl #23
	b	.LBB0_33
.section bb0_32
.LBB0_32:                               @ %if.else120
	rsb	r0, r0, #1
	lsr	r0, r1, r0
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.end124
	orr	r0, r0, r2
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	fmodf, .Ltmp0-fmodf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
