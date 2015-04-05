.section __lockfile_text
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
	.file	"src/stdio/__lockfile.bc"
	.hidden	__lockfile
	.globl	__lockfile
	.align	2
	.type	__lockfile,%function
.section bb0_0
__lockfile:                             @ @__lockfile
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r6, r0
	@APP
	bl	__a_gettp
	mov	r2, r0
	@NO_APP
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r6
	mov	r0, #0
	ldr	r1, [r4, #76]!
	ldr	r5, [r2, #-160]
	cmp	r1, r5
	beq	.LBB0_10
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %for.cond.i.preheader
	mov	r0, #0
	mov	r1, r5
	mov	r2, r4
	bl	__a_cas
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.cond.i.preheader
	mov	r1, r0
	mov	r0, #1
	cmp	r1, #0
	beq	.LBB0_10
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end.i.lr.ph
	add	r6, r6, #80
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r4]
	cmp	r2, #0
	beq	.LBB0_8
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %while.body
                                        @   in Loop: Header=BB0_6 Depth=1
	mov	r0, r4
	mov	r1, r6
	mov	r3, #1
	bl	__wait
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.cond.i.backedge
                                        @   in Loop: Header=BB0_6 Depth=1
	mov	r0, #0
	mov	r1, r5
	mov	r2, r4
	bl	__a_cas
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.cond.i.backedge
                                        @   in Loop: Header=BB0_6 Depth=1
	mov	r1, r0
	mov	r0, #1
	cmp	r1, #0
	bne	.LBB0_6
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	__lockfile, .Ltmp0-__lockfile
	.cantunwind
	.fnend

	.hidden	__unlockfile
	.globl	__unlockfile
	.align	2
	.type	__unlockfile,%function
.section bb1_0
__unlockfile:                           @ @__unlockfile
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	mov	r3, r0
	mov	r0, #0
	@APP
	bl	__a_barrier
	@NO_APP
	str	r0, [r3, #76]!
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.LBB1_5
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %if.then
	mov	r7, #240
	mov	r0, r3
	mov	r1, #129
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB1_5
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %lor.rhs.i
	mov	r7, #240
	mov	r0, r3
	mov	r1, #1
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %if.end
	pop	{r7, lr}
	mov	pc, lr
.Ltmp1:
	.size	__unlockfile, .Ltmp1-__unlockfile
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
