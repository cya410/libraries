.section netlink_text
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
	.file	"src/network/netlink.bc"
	.globl	__rtnetlink_enumerate
	.align	2
	.type	__rtnetlink_enumerate,%function
.section bb0_0
__rtnetlink_enumerate:                  @ @__rtnetlink_enumerate
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
	.pad	#8
	sub	sp, sp, #8
	mov	r8, r1
	mov	r1, #3
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r7, r2
	mov	r4, r0
	mov	r0, #16
	mov	r2, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r6, r3
	orr	r1, r1, #524288
	bl	socket
	mov	r5, r0
	mvn	r1, #0
	cmp	r5, #0
	blt	.LBB0_10
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	mov	r0, r5
	mov	r1, #1
	mov	r2, #18
	mov	r3, r4
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__netlink_enumerate
	mov	r1, r0
	cmp	r1, #0
	bne	.LBB0_9
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then2
	mov	r0, r5
	mov	r1, #2
	mov	r2, #22
	mov	r3, r8
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then2
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__netlink_enumerate
	mov	r1, r0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end4
	mov	r7, #6
	mov	r0, r5
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %return
	mov	r0, r1
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	__rtnetlink_enumerate, .Ltmp0-__rtnetlink_enumerate
	.cantunwind
	.fnend

	.align	2
	.type	__netlink_enumerate,%function
.section bb1_0
__netlink_enumerate:                    @ @__netlink_enumerate
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.pad	#8192
	sub	sp, sp, #8192
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	add	r9, sp, #8
	mov	r6, r2
	mov	r7, r1
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	mov	r8, r0
	mov	r1, #0
	mov	r2, #20
	add	r4, sp, #8
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %entry
	mov	r5, r3
	mov	r10, #20
	mov	r0, r9
	bl	memset
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %entry
	mov	r0, #1
	str	r10, [r4]
	strh	r6, [r4, #4]
	mov	r1, r9
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %entry
	mov	r2, #20
	mov	r3, #0
	orr	r0, r0, #768
	strh	r0, [r4, #6]
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %entry
	mov	r0, r8
	str	r7, [r4, #8]
	strb	r5, [r4, #16]
	bl	send
	cmp	r0, #0
	blt	.LBB1_20
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %while.body.preheader
	add	r5, sp, #8
	mov	r0, r8
	mov	r2, #8192
	mov	r3, #64
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %while.body.preheader
	mov	r1, r5
	bl	recv
	cmp	r0, #1
	blt	.LBB1_19
	b	.LBB1_11
.section bb1_11
.LBB1_11:
	add	lr, sp, #8192
	ldr	r9, [lr, #44]
	add	lr, sp, #8192
	ldr	r4, [lr, #40]
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.end17
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_14 Depth 2
	cmp	r0, #16
	blo	.LBB1_18
	b	.LBB1_13
.section bb1_13
.LBB1_13:                               @   in Loop: Header=BB1_12 Depth=1
	add	r6, r5, r0
	mov	r7, r5
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %for.body
                                        @   Parent Loop BB1_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrh	r1, [r7, #4]
	cmp	r1, #2
	beq	.LBB1_19
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %for.body
                                        @   in Loop: Header=BB1_14 Depth=2
	mov	r0, #0
	cmp	r1, #3
	beq	.LBB1_20
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %if.end32
                                        @   in Loop: Header=BB1_14 Depth=2
	mov	r0, r9
	mov	r1, r7
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	bne	.LBB1_20
	b	.LBB1_17
.section bb1_17
.LBB1_17:                               @ %for.inc
                                        @   in Loop: Header=BB1_14 Depth=2
	ldr	r0, [r7]
	add	r0, r0, #3
	bic	r0, r0, #3
	add	r7, r7, r0
	sub	r0, r6, r7
	cmp	r0, #15
	bhi	.LBB1_14
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %while.body.loopexit
                                        @   in Loop: Header=BB1_12 Depth=1
	mov	r0, r8
	mov	r1, r5
	mov	r2, #8192
	mov	r3, #64
	bl	recv
	cmp	r0, #1
	bge	.LBB1_12
	b	.LBB1_19
.section bb1_19
.LBB1_19:
	mvn	r0, #0
	b	.LBB1_20
.section bb1_20
.LBB1_20:                               @ %cleanup
	add	sp, sp, #8
	add	sp, sp, #8192
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp1:
	.size	__netlink_enumerate, .Ltmp1-__netlink_enumerate
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
