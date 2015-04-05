.section sqrtf_text
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
	.file	"src/math/sqrtf.bc"
	.globl	sqrtf
	.align	2
	.type	sqrtf,%function
.section bb0_0
sqrtf:                                  @ @sqrtf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	mov	r0, #1065353216
	orr	r0, r0, #1073741824
	and	r1, r4, r0
	cmp	r1, r0
	bne	.LBB0_3
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.then
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, r4
	bl	__aeabi_fadd
	mov	r4, r0
	b	.LBB0_20
.section bb0_3
.LBB0_3:                                @ %if.end
	cmp	r4, #0
	ble	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end12
	mov	r1, #0
	cmp	r1, r4, asr #23
	beq	.LBB0_9
	b	.LBB0_5
.section bb0_5
.LBB0_5:
	asr	r0, r4, #23
	b	.LBB0_14
.section bb0_6
.LBB0_6:                                @ %if.then3
	mvn	r0, #-2147483648
	tst	r4, r0
	beq	.LBB0_20
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end7
	cmp	r4, #0
	blt	.LBB0_21
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.cond.preheader.thread
	mov	r0, #1
	add	r0, r0, r4, asr #23
	mov	r4, #0
	b	.LBB0_10
.section bb0_9
.LBB0_9:                                @ %for.cond.preheader
	mov	r0, #1
	tst	r4, #8388608
	bne	.LBB0_13
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.body.lr.ph
	mov	r1, #0
	mov	r2, #8388608
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	lsl	r3, r4, #1
	tst	r2, r4, lsl #1
	add	r1, r1, #1
	mov	r4, r3
	beq	.LBB0_11
	b	.LBB0_12
.section bb0_12
.LBB0_12:
	mov	r4, r3
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.end
	sub	r0, r0, r1
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.end19
	ldr	r1, .LCPI0_0
	sub	r12, r0, #127
	mov	lr, #0
	mov	r2, #0
	b	.LBB0_15
.LCPI0_0:
	.long	8388607                 @ 0x7fffff
.section bb0_15
.LBB0_15:                               @ %if.end19
	and	r0, r12, #1
	and	r1, r4, r1
	mov	r4, #16777216
	orr	r1, r1, #8388608
	lsl	r1, r1, r0
	mov	r0, #0
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r3, r4, r0
	lsl	r1, r1, #1
	cmp	r1, r3
	subge	r1, r1, r3
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %while.body
                                        @   in Loop: Header=BB0_16 Depth=1
	addge	r0, r3, r4
	lsr	r3, r4, #1
	addge	r2, r4, r2
	cmp	lr, r4, lsr #1
	mov	r4, r3
	bne	.LBB0_16
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %while.end
	and	r0, r2, #1
	cmp	r1, #0
	addne	r2, r2, r0
	mov	r0, #1065353216
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %while.end
	orr	r0, r0, #-1073741824
	and	r0, r0, r12, lsl #22
	add	r0, r0, r2, asr #1
	add	r4, r0, #1056964608
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %return
	mov	r0, r4
	pop	{r4, lr}
	mov	pc, lr
.section bb0_21
.LBB0_21:                               @ %if.then9
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r1, r0
	bl	__aeabi_fdiv
	mov	r4, r0
	b	.LBB0_20
.Ltmp0:
	.size	sqrtf, .Ltmp0-sqrtf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
