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
	.file	"src/locale/__mo_lookup.bc"
	.globl	__mo_lookup
	.align	2
	.type	__mo_lookup,%function
__mo_lookup:                            @ @__mo_lookup
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r8, r0
	mov	r5, r1
	mov	r12, r2
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r2, #65280
	mov	lr, #16711680
	ldr	r1, [r8, #16]
	ldr	r10, [r8]
	b	.LBB0_5
.LBB0_5:                                @ %entry
	ldr	r6, [r8, #8]
	ldr	r0, [r8, #12]
	ldr	r4, .LCPI0_0
	and	r3, r2, r1, lsr #8
	b	.LBB0_6
.LCPI0_0:
	.long	2500072158              @ 0x950412de
.LBB0_6:                                @ %entry
	and	r7, lr, r1, lsl #8
	cmp	r10, r4
	orr	r3, r3, r1, lsr #24
	orr	r7, r7, r1, lsl #24
	b	.LBB0_7
.LBB0_7:                                @ %entry
	orrne	r1, r7, r3
	and	r3, r2, r0, lsr #8
	and	r7, lr, r0, lsl #8
	cmp	r10, r4
	b	.LBB0_8
.LBB0_8:                                @ %entry
	and	r2, r2, r6, lsr #8
	orr	r3, r3, r0, lsr #24
	orr	r7, r7, r0, lsl #24
	orr	r2, r2, r6, lsr #24
	b	.LBB0_9
.LBB0_9:                                @ %entry
	orrne	r0, r7, r3
	and	r3, lr, r6, lsl #8
	cmp	r10, r4
	orr	r3, r3, r6, lsl #24
	orrne	r6, r3, r2
	cmp	r6, r5, lsr #2
	bhs	.LBB0_30
	b	.LBB0_10
.LBB0_10:                               @ %lor.lhs.false
	sub	r2, r5, r6, lsl #2
	cmp	r0, r2
	cmplo	r1, r2
	bhs	.LBB0_30
	b	.LBB0_11
.LBB0_11:                               @ %lor.lhs.false11
	orr	r2, r1, r0
	tst	r2, #3
	bne	.LBB0_30
	b	.LBB0_12
.LBB0_12:                               @ %if.end
	lsr	r1, r1, #2
	lsr	r0, r0, #2
	mov	r11, #0
	mov	r7, #65280
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_14
.LBB0_13:                               @ %if.else69
                                        @   in Loop: Header=BB0_14 Depth=1
	cmp	r0, #0
	lsr	r1, r6, #1
	subge	r1, r6, r1
	movge	r11, r9
	mov	r6, r1
	b	.LBB0_14
.LBB0_14:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	add	r9, r11, r6, lsr #1
	mov	r1, r8
	mov	lr, #16711680
	b	.LBB0_15
.LBB0_15:                               @ %for.cond
                                        @   in Loop: Header=BB0_14 Depth=1
	add	r0, r0, r9, lsl #1
	ldr	r0, [r1, r0, lsl #2]!
	ldr	r4, .LCPI0_1
	ldr	r1, [r1, #4]
	b	.LBB0_16
.LCPI0_1:
	.long	2500072158              @ 0x950412de
.LBB0_16:                               @ %for.cond
                                        @   in Loop: Header=BB0_14 Depth=1
	and	r2, r7, r0, lsr #8
	and	r3, lr, r0, lsl #8
	cmp	r10, r4
	orr	r2, r2, r0, lsr #24
	b	.LBB0_17
.LBB0_17:                               @ %for.cond
                                        @   in Loop: Header=BB0_14 Depth=1
	orr	r3, r3, r0, lsl #24
	orrne	r0, r3, r2
	cmp	r10, r4
	and	r2, r7, r1, lsr #8
	b	.LBB0_18
.LBB0_18:                               @ %for.cond
                                        @   in Loop: Header=BB0_14 Depth=1
	and	r3, lr, r1, lsl #8
	orr	r2, r2, r1, lsr #24
	orr	r3, r3, r1, lsl #24
	orrne	r1, r3, r2
	b	.LBB0_19
.LBB0_19:                               @ %for.cond
                                        @   in Loop: Header=BB0_14 Depth=1
	cmp	r1, r5
	sublo	r2, r5, r1
	cmplo	r0, r2
	bhs	.LBB0_30
	b	.LBB0_20
.LBB0_20:                               @ %lor.lhs.false30
                                        @   in Loop: Header=BB0_14 Depth=1
	add	r0, r1, r0
	ldrb	r0, [r8, r0]
	cmp	r0, #0
	bne	.LBB0_30
	b	.LBB0_21
.LBB0_21:                               @ %if.end35
                                        @   in Loop: Header=BB0_14 Depth=1
	add	r1, r8, r1
	mov	r0, r12
	mov	r4, r12
	bl	strcmp
	cmp	r0, #0
	beq	.LBB0_23
	b	.LBB0_22
.LBB0_22:                               @ %if.else
                                        @   in Loop: Header=BB0_14 Depth=1
	mov	r12, r4
	cmp	r6, #1
	bne	.LBB0_13
	b	.LBB0_30
.LBB0_23:                               @ %if.then38
	ldr	r1, [sp, #4]            @ 4-byte Reload
	lsl	r0, r9, #1
	mov	r2, #65280
	mov	r7, #16711680
	b	.LBB0_24
.LBB0_24:                               @ %if.then38
	add	r0, r0, r1
	mov	r1, r8
	ldr	r0, [r1, r0, lsl #2]!
	ldr	r4, .LCPI0_2
	b	.LBB0_25
.LCPI0_2:
	.long	2500072158              @ 0x950412de
.LBB0_25:                               @ %if.then38
	ldr	r1, [r1, #4]
	and	r3, r2, r0, lsr #8
	and	r6, r7, r0, lsl #8
	cmp	r10, r4
	b	.LBB0_26
.LBB0_26:                               @ %if.then38
	orr	r3, r3, r0, lsr #24
	orr	r6, r6, r0, lsl #24
	orrne	r0, r6, r3
	cmp	r10, r4
	b	.LBB0_27
.LBB0_27:                               @ %if.then38
	and	r2, r2, r1, lsr #8
	and	r3, r7, r1, lsl #8
	orr	r2, r2, r1, lsr #24
	orr	r3, r3, r1, lsl #24
	b	.LBB0_28
.LBB0_28:                               @ %if.then38
	orrne	r1, r3, r2
	cmp	r1, r5
	sublo	r2, r5, r1
	cmplo	r0, r2
	bhs	.LBB0_30
	b	.LBB0_29
.LBB0_29:                               @ %lor.lhs.false58
	add	r0, r1, r0
	ldrb	r2, [r8, r0]
	mov	r0, #0
	cmp	r2, #0
	addeq	r0, r8, r1
	b	.LBB0_31
.LBB0_30:                               @ %return
	mov	r0, #0
	b	.LBB0_31
.LBB0_31:                               @ %return
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__mo_lookup, .Ltmp0-__mo_lookup
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
