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
	.file	"src/thread/__wait.bc"
	.globl	__wait
	.align	2
	.type	__wait,%function
__wait:                                 @ @__wait
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r8, r3
	mov	r5, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r9, r2
	mov	r4, r1
	mvn	r0, #99
	cmp	r8, #0
	movne	r8, #128
	b	.LBB0_4
.LBB0_4:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r4, #0
	ldrne	r1, [r4]
	cmpne	r1, #0
	bne	.LBB0_8
	b	.LBB0_5
.LBB0_5:                                @ %while.body
                                        @   in Loop: Header=BB0_4 Depth=1
	ldr	r1, [r5]
	cmp	r1, r9
	bne	.LBB0_15
	b	.LBB0_6
.LBB0_6:                                @ %if.then4
                                        @   in Loop: Header=BB0_4 Depth=1
	@APP
	bl	__a_barrier
	@NO_APP
	adds	r0, r0, #1
	bne	.LBB0_4
	b	.LBB0_7
.LBB0_7:                                @ %while.end
	mov	r6, #0
	cmp	r4, #0
	beq	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	mov	r2, r4
	add	r1, r0, #1
	bl	__a_cas
	mov	r6, #1
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_10
.LBB0_9:                                @ %lor.rhs13
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r7, #240
	mov	r0, r5
	mov	r1, #0
	mov	r2, r9
	mov	r3, #0
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_10
.LBB0_10:                               @ %while.cond9.preheader
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5]
	cmp	r0, r9
	bne	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               @ %while.body11
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r7, #240
	mov	r0, r5
	mov	r1, r8
	mov	r2, r9
	b	.LBB0_12
.LBB0_12:                               @ %while.body11
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r3, #0
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_10
	b	.LBB0_9
.LBB0_13:                               @ %while.end17
	cmp	r6, #1
	bne	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               @ %do.body.i.i36
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	mov	r2, r4
	sub	r1, r0, #1
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_14
	b	.LBB0_15
.LBB0_15:                               @ %if.end20
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__wait, .Ltmp0-__wait
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
