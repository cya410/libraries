.section gethostname_text
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
	.file	"src/unistd/gethostname.bc"
	.globl	gethostname
	.align	2
	.type	gethostname,%function
.section bb0_0
gethostname:                            @ @gethostname
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
	.pad	#392
	sub	sp, sp, #392
	mov	r6, sp
	mov	r5, r0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r0, r6
	bl	uname
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB0_9
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	cmp	r4, #65
	mov	r0, #0
	mov	r1, #0
	movhi	r4, #65
	cmp	r4, #0
	beq	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %land.rhs.preheader
	add	r2, r6, #65
	mov	r1, #0
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r2, r1]
	strb	r3, [r5, r1]
	cmp	r3, #0
	beq	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.inc
                                        @   in Loop: Header=BB0_6 Depth=1
	add	r1, r1, #1
	cmp	r1, r4
	blo	.LBB0_6
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.end
	cmp	r1, r4
	moveq	r0, #0
	addeq	r1, r4, r5
	strbeq	r0, [r1, #-1]
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %cleanup
	add	sp, sp, #392
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	gethostname, .Ltmp0-gethostname
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
