.section wcsncasecmp_text
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
	.file	"src/string/wcsncasecmp.bc"
	.globl	wcsncasecmp
	.align	2
	.type	wcsncasecmp,%function
.section bb0_0
wcsncasecmp:                            @ @wcsncasecmp
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
	mov	r6, r0
	mov	r4, r1
	mov	r0, #0
	cmp	r2, #0
	beq	.LBB0_14
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %for.cond.preheader
	ldr	r0, [r6]
	mov	r8, #0
	cmp	r0, #0
	beq	.LBB0_13
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %land.lhs.true.preheader
	rsb	r5, r2, #1
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %land.lhs.true
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r5, #0
	beq	.LBB0_10
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %land.lhs.true
                                        @   in Loop: Header=BB0_5 Depth=1
	ldr	r1, [r4]
	cmp	r1, #0
	beq	.LBB0_11
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %land.rhs
                                        @   in Loop: Header=BB0_5 Depth=1
	cmp	r0, r1
	beq	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %lor.rhs
                                        @   in Loop: Header=BB0_5 Depth=1
	bl	towlower
	mov	r7, r0
	ldr	r0, [r4]
	bl	towlower
	cmp	r7, r0
	bne	.LBB0_12
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.inc
                                        @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [r6, #4]!
	add	r5, r5, #1
	add	r4, r4, #4
	cmp	r0, #0
	bne	.LBB0_5
	b	.LBB0_13
.section bb0_10
.LBB0_10:
	mov	r8, r0
	b	.LBB0_13
.section bb0_11
.LBB0_11:
	mov	r8, r0
	b	.LBB0_13
.section bb0_12
.LBB0_12:                               @ %lor.rhs.for.end_crit_edge
	ldr	r8, [r6]
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %for.end
	mov	r0, r8
	bl	towlower
	mov	r5, r0
	ldr	r0, [r4]
	bl	towlower
	sub	r0, r5, r0
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	wcsncasecmp, .Ltmp0-wcsncasecmp
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
