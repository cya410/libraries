.section getdelim_text
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
	.file	"src/stdio/getdelim.bc"
	.globl	getdelim
	.align	2
	.type	getdelim,%function
.section bb0_0
getdelim:                               @ @getdelim
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r11, r0
	mov	r10, r2
	mov	r4, r3
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r8, r1
	cmp	r11, #0
	str	r10, [sp, #8]           @ 4-byte Spill
	cmpne	r8, #0
	bne	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	b	.LBB0_29
.section bb0_6
.LBB0_6:                                @ %if.end
	ldr	r0, [r11]
	mov	r9, #0
	cmp	r0, #0
	moveq	r0, #0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	streq	r0, [r8]
	ldr	r0, [r4, #76]
	cmp	r0, #0
	mov	r0, #0
	blt	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %cond.true
	mov	r0, r4
	bl	__lockfile
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %cond.end
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldmib	r4, {r0, r1}
	sub	r2, r1, r0
	mov	r1, r10
	bl	memchr
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.cond
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r6, r0
	ldr	r1, [r4, #4]
	cmp	r6, #0
	ldreq	r0, [r4, #8]
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.cond
                                        @   in Loop: Header=BB0_10 Depth=1
	addne	r0, r6, #1
	sub	r5, r0, r1
	ldr	r0, [r8]
	add	r7, r5, r9
	cmp	r7, r0
	bhs	.LBB0_14
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %cond.end25.if.end48_crit_edge
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r11]
	b	.LBB0_19
.section bb0_14
.LBB0_14:                               @ %if.then29
                                        @   in Loop: Header=BB0_10 Depth=1
	mvn	r0, #-2147483648
	sub	r0, r0, r9
	cmp	r5, r0
	bhs	.LBB0_26
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end32
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r10, r7, #2
	mov	r0, #0
	cmn	r10, #-1073741823
	movlo	r0, #1
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end32
                                        @   in Loop: Header=BB0_10 Depth=1
	lsl	r1, r10, r0
	ldr	r0, [r11]
	str	r1, [r8]
	bl	realloc
	cmp	r0, #0
	bne	.LBB0_18
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then40
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r11]
	mov	r1, r10
	str	r10, [r8]
	bl	realloc
	cmp	r0, #0
	beq	.LBB0_26
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end47
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [r4, #4]
	ldr	r10, [sp, #8]           @ 4-byte Reload
	str	r0, [r11]
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end48
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r0, r0, r9
	mov	r2, r5
	bl	memcpy
	ldr	r0, [r4, #4]
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end48
                                        @   in Loop: Header=BB0_10 Depth=1
	cmp	r6, #0
	add	r1, r0, r5
	str	r1, [r4, #4]
	bne	.LBB0_25
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end56
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r2, [r4, #8]
	cmp	r1, r2
	bhs	.LBB0_23
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %cond.end64.thread
                                        @   in Loop: Header=BB0_10 Depth=1
	add	r1, r1, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0, r5]
	b	.LBB0_24
.section bb0_23
.LBB0_23:                               @ %cond.end64
                                        @   in Loop: Header=BB0_10 Depth=1
	mov	r0, r4
	bl	__uflow
	cmn	r0, #1
	beq	.LBB0_30
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end77
                                        @   in Loop: Header=BB0_10 Depth=1
	ldr	r1, [r11]
	add	r9, r7, #1
	strb	r0, [r1, r7]
	and	r0, r0, #255
	cmp	r0, r10
	bne	.LBB0_10
	b	.LBB0_32
.section bb0_25
.LBB0_25:
	mov	r9, r7
	b	.LBB0_32
.section bb0_26
.LBB0_26:                               @ %oom
	ldr	r0, [sp, #4]            @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_28
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.then90
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.end92
	bl	__errno_location
	mov	r1, #12
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %return
	mvn	r9, #0
	str	r1, [r0]
	b	.LBB0_35
.section bb0_30
.LBB0_30:                               @ %if.then68
	cmp	r7, #0
	beq	.LBB0_36
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %lor.lhs.false70
	ldrb	r0, [r4]
	mov	r9, r7
	tst	r0, #16
	beq	.LBB0_36
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %for.end
	ldr	r0, [r11]
	mov	r1, #0
	strb	r1, [r0, r9]
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %if.then72
	ldr	r0, [sp, #4]            @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_35
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %if.then74
	mov	r0, r4
	bl	__unlockfile
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %return
	mov	r0, r9
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_36
.LBB0_36:                               @ %if.then72
	mvn	r9, #0
	b	.LBB0_33
.Ltmp0:
	.size	getdelim, .Ltmp0-getdelim
	.cantunwind
	.fnend

	.hidden	__lockfile
	.protected	__uflow
	.hidden	__unlockfile

	.weak	__getdelim
__getdelim = getdelim
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
