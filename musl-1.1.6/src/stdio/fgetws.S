.section fgetws_text
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
	.file	"src/stdio/fgetws.bc"
	.globl	fgetws
	.align	2
	.type	fgetws,%function
.section bb0_0
fgetws:                                 @ @fgetws
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
	mov	r7, r1
	mov	r5, r2
	mov	r4, r0
	cmp	r7, #0
	beq	.LBB0_11
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	ldr	r0, [r5, #76]
	mov	r8, #0
	cmp	r0, #0
	blt	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %cond.true
	mov	r0, r5
	bl	__lockfile
	mov	r8, r0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.end
	rsb	r6, r7, #1
	mov	r7, r4
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r6, #0
	beq	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.body
                                        @   in Loop: Header=BB0_6 Depth=1
	mov	r0, r5
	bl	__fgetwc_unlocked
	cmn	r0, #1
	strne	r0, [r7], #4
	addne	r6, r6, #1
	cmpne	r0, #10
	bne	.LBB0_6
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.end
	mov	r0, #0
	str	r0, [r7]
	ldrb	r0, [r5]
	tst	r0, #32
	movne	r7, r4
	cmp	r8, #0
	beq	.LBB0_10
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then14
	mov	r0, r5
	bl	__unlockfile
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end15
	cmp	r7, r4
	moveq	r4, #0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	fgetws, .Ltmp0-fgetws
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	fgetws_unlocked
fgetws_unlocked = fgetws
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
