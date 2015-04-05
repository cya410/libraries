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
	.file	"src/passwd/getgr_r.bc"
	.globl	getgrnam_r
	.align	2
	.type	getgrnam_r,%function
getgrnam_r:                             @ @getgrnam_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, r2
	mov	r2, r1
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldr	r1, [sp, #16]
	str	r3, [sp]
	mov	r3, r12
	str	r1, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r1, #0
	bl	getgr_r
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getgrnam_r, .Ltmp0-getgrnam_r
	.cantunwind
	.fnend

	.align	2
	.type	getgr_r,%function
getgr_r:                                @ @getgr_r
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#36
	sub	sp, sp, #36
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r10, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r7, r0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	add	r1, sp, #16
	mov	r0, #1
	mov	r5, r3
	mov	r4, r2
	b	.LBB1_5
.LBB1_5:                                @ %entry
	str	r10, [sp, #32]
	str	r10, [sp, #28]
	str	r10, [sp, #24]
	str	r10, [sp, #20]
	b	.LBB1_6
.LBB1_6:                                @ %entry
	bl	pthread_setcancelstate
	ldr	r0, .LCPI1_2
	ldr	r1, .LCPI1_3
	bl	fopen
	mov	r11, r0
	cmp	r11, #0
	beq	.LBB1_16
	b	.LBB1_7
.LCPI1_2:
	.long	.L.str
.LCPI1_3:
	.long	.L.str1
.LBB1_7:                                @ %if.end
	ldr	r0, [sp, #76]
	add	r8, sp, #20
	add	r9, sp, #24
	add	r2, sp, #32
	b	.LBB1_8
.LBB1_8:                                @ %if.end
	add	r3, sp, #28
	mov	r1, r4
	str	r10, [r0]
	mov	r0, r11
	b	.LBB1_9
.LBB1_9:                                @ %if.end
	str	r9, [sp]
	str	r8, [sp, #4]
	bl	__getgrent_a
	cmp	r0, #0
	beq	.LBB1_31
	b	.LBB1_10
.LBB1_10:                               @ %while.body.lr.ph
	str	r5, [sp, #8]            @ 4-byte Spill
	add	r6, sp, #32
	add	r5, sp, #28
	b	.LBB1_11
.LBB1_11:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r7, #0
	beq	.LBB1_13
	b	.LBB1_12
.LBB1_12:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_11 Depth=1
	ldr	r1, [r4]
	mov	r0, r7
	bl	strcmp
	cmp	r0, #0
	bne	.LBB1_14
	b	.LBB1_17
.LBB1_13:                               @ %land.lhs.true9
                                        @   in Loop: Header=BB1_11 Depth=1
	ldr	r0, [r4, #8]
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r0, r1
	beq	.LBB1_17
	b	.LBB1_14
.LBB1_14:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB1_11 Depth=1
	mov	r0, r11
	mov	r1, r4
	mov	r2, r6
	mov	r3, r5
	b	.LBB1_15
.LBB1_15:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB1_11 Depth=1
	str	r9, [sp]
	str	r8, [sp, #4]
	bl	__getgrent_a
	cmp	r0, #0
	bne	.LBB1_11
	b	.LBB1_31
.LBB1_16:                               @ %if.then
	bl	__errno_location
	ldr	r10, [r0]
	b	.LBB1_32
.LBB1_17:                               @ %if.then10
	ldr	r0, [sp, #20]
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #72]
	mov	r10, #34
	b	.LBB1_18
.LBB1_18:                               @ %if.then10
	add	r1, r2, r0, lsl #2
	add	r1, r1, #36
	cmp	r1, r3
	bhi	.LBB1_31
	b	.LBB1_19
.LBB1_19:                               @ %if.end15
	ldr	r1, [sp, #76]
	ldr	r6, [sp, #8]            @ 4-byte Reload
	lsl	r0, r0, #2
	str	r4, [r1]
	b	.LBB1_20
.LBB1_20:                               @ %if.end15
	rsb	r1, r6, #0
	and	r1, r1, #15
	add	r3, r6, r1
	add	r0, r1, r0
	b	.LBB1_21
.LBB1_21:                               @ %if.end15
	str	r3, [r4, #12]
	add	r5, r0, #4
	ldr	r1, [sp, #32]
	add	r0, r6, r5
	b	.LBB1_22
.LBB1_22:                               @ %if.end15
	bl	memcpy
	ldr	r0, [r4]
	mov	r10, #0
	add	r1, r0, r5
	b	.LBB1_23
.LBB1_23:                               @ %if.end15
	ldr	r0, [sp, #32]
	sub	r1, r1, r0
	add	r1, r6, r1
	str	r1, [r4]
	b	.LBB1_24
.LBB1_24:                               @ %if.end15
	ldr	r1, [r4, #4]
	add	r1, r1, r5
	sub	r1, r1, r0
	add	r1, r6, r1
	b	.LBB1_25
.LBB1_25:                               @ %if.end15
	str	r1, [r4, #4]
	ldr	r1, [sp, #24]
	ldr	r2, [r1]
	mov	r1, #0
	cmp	r2, #0
	beq	.LBB1_30
	b	.LBB1_26
.LBB1_26:
	mov	r1, #0
	b	.LBB1_28
.LBB1_27:                               @ %for.body.for.body_crit_edge
                                        @   in Loop: Header=BB1_28 Depth=1
	ldr	r0, [sp, #32]
	b	.LBB1_28
.LBB1_28:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	add	r2, r2, r5
	sub	r0, r2, r0
	ldr	r2, [r4, #12]
	add	r0, r6, r0
	b	.LBB1_29
.LBB1_29:                               @ %for.body
                                        @   in Loop: Header=BB1_28 Depth=1
	str	r0, [r2, r1, lsl #2]
	ldr	r0, [sp, #24]
	add	r0, r0, r1, lsl #2
	add	r1, r1, #1
	ldr	r2, [r0, #4]
	cmp	r2, #0
	bne	.LBB1_27
	b	.LBB1_30
.LBB1_30:                               @ %for.end
	ldr	r0, [r4, #12]
	str	r10, [r0, r1, lsl #2]
	b	.LBB1_31
.LBB1_31:                               @ %while.end
	ldr	r0, [sp, #24]
	bl	free
	ldr	r0, [sp, #32]
	bl	free
	mov	r0, r11
	bl	fclose
	b	.LBB1_32
.LBB1_32:                               @ %done
	ldr	r0, [sp, #16]
	mov	r1, #0
	bl	pthread_setcancelstate
	mov	r0, r10
	add	sp, sp, #36
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	getgr_r, .Ltmp1-getgr_r
	.cantunwind
	.fnend

	.globl	getgrgid_r
	.align	2
	.type	getgrgid_r,%function
getgrgid_r:                             @ @getgrgid_r
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, r2
	mov	r2, r1
	b	.LBB2_2
.LBB2_2:                                @ %entry
	mov	r1, r0
	ldr	r0, [sp, #16]
	str	r3, [sp]
	mov	r3, r12
	b	.LBB2_3
.LBB2_3:                                @ %entry
	str	r0, [sp, #4]
	mov	r0, #0
	bl	getgr_r
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	getgrgid_r, .Ltmp2-getgrgid_r
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/etc/group"
	.size	.L.str, 11

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"rbe"
	.size	.L.str1, 4


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
