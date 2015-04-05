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
	.file	"src/misc/nftw.bc"
	.globl	nftw
	.align	2
	.type	nftw,%function
nftw:                                   @ @nftw
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	.pad	#4096
	sub	sp, sp, #4096
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r2
	mov	r8, r3
	mov	r6, r1
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r7, r0
	mov	r4, #0
	cmp	r5, #1
	blt	.LBB0_12
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	mov	r0, r7
	bl	strlen
	cmp	r0, #4096
	bls	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                @ %if.then2
	bl	__errno_location
	mov	r1, #36
	mvn	r4, #0
	str	r1, [r0]
	b	.LBB0_12
.LBB0_7:                                @ %if.end4
	add	r4, sp, #11
	add	r2, r0, #1
	mov	r1, r7
	mov	r0, r4
	b	.LBB0_8
.LBB0_8:                                @ %if.end4
	bl	memcpy
	add	r7, sp, #4096
	mov	r0, #1
	add	r1, r7, #12
	b	.LBB0_9
.LBB0_9:                                @ %if.end4
	bl	pthread_setcancelstate
	mov	r0, #0
	mov	r1, r6
	mov	r2, r5
	b	.LBB0_10
.LBB0_10:                               @ %if.end4
	mov	r3, r8
	str	r0, [sp]
	mov	r0, r4
	bl	do_nftw
	b	.LBB0_11
.LBB0_11:                               @ %if.end4
	add	r5, sp, #4096
	mov	r4, r0
	mov	r1, #0
	ldr	r0, [r5, #12]
	bl	pthread_setcancelstate
	b	.LBB0_12
.LBB0_12:                               @ %cleanup
	mov	r0, r4
	add	sp, sp, #16
	add	sp, sp, #4096
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	nftw, .Ltmp0-nftw
	.cantunwind
	.fnend

	.align	2
	.type	do_nftw,%function
do_nftw:                                @ @do_nftw
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#172
	sub	sp, sp, #172
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r9, r0
	mov	r11, r3
	str	r2, [sp, #16]           @ 4-byte Spill
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r8, r1
                                        @ kill: R0<def> R9<kill>
	bl	strlen
	mov	r10, r0
	cmp	r10, #0
	beq	.LBB1_6
	b	.LBB1_5
.LBB1_5:                                @ %land.lhs.true
	sub	r0, r10, #1
	str	r0, [sp, #20]           @ 4-byte Spill
	ldrb	r0, [r9, r0]
	cmp	r0, #47
	strne	r10, [sp, #20]          @ 4-byte Spill
	b	.LBB1_7
.LBB1_6:                                @ %cond.false
	str	r10, [sp, #20]          @ 4-byte Spill
	b	.LBB1_7
.LBB1_7:                                @ %cond.end
	add	r1, sp, #64
	mov	r0, r9
	ands	r4, r11, #1
	beq	.LBB1_11
	b	.LBB1_8
.LBB1_8:                                @ %cond.true4
	bl	lstat
	cmp	r0, #0
	beq	.LBB1_12
	b	.LBB1_9
.LBB1_9:                                @ %cond.true4.if.else_crit_edge
	bl	__errno_location
	mov	r4, r0
	b	.LBB1_10
.LBB1_10:                               @ %if.else
	ldr	r0, [r4]
	mvn	r7, #0
	mov	r2, #4
	cmp	r0, #13
	beq	.LBB1_19
	b	.LBB1_58
.LBB1_11:                               @ %cond.false7
	bl	stat
	cmp	r0, #0
	blt	.LBB1_17
	b	.LBB1_12
.LBB1_12:                               @ %if.else27
	ldr	r0, [sp, #80]
	and	r0, r0, #61440
	cmp	r0, #40960
	bne	.LBB1_14
	b	.LBB1_13
.LBB1_13:                               @ %if.then48
	mov	r0, #7
	eor	r2, r0, r4, lsl #1
	b	.LBB1_19
.LBB1_14:                               @ %if.else27
	mov	r2, #1
	cmp	r0, #16384
	bne	.LBB1_19
	b	.LBB1_15
.LBB1_15:                               @ %if.then31
	mov	r0, r9
	mov	r1, #4
	mov	r4, #4
	bl	access
	b	.LBB1_16
.LBB1_16:                               @ %if.then31
	cmp	r0, #0
	mov	r2, #3
	andge	r0, r4, r11, lsr #1
	orrge	r2, r0, #2
	b	.LBB1_19
.LBB1_17:                               @ %land.lhs.true13
	bl	__errno_location
	mov	r4, r0
	ldr	r0, [r4]
	cmp	r0, #2
	bne	.LBB1_10
	b	.LBB1_18
.LBB1_18:                               @ %land.lhs.true17
	add	r1, sp, #64
	mov	r0, r9
	bl	lstat
	mov	r2, #7
	cmp	r0, #0
	bne	.LBB1_10
	b	.LBB1_19
.LBB1_19:                               @ %if.end57
	ldr	r4, [sp, #208]
	ldr	r0, [sp, #64]
	ldr	r1, [sp, #68]
	tst	r11, #2
	cmpne	r4, #0
	beq	.LBB1_21
	b	.LBB1_20
.LBB1_20:                               @ %land.lhs.true62
	ldr	r7, [r4, #8]
	ldr	r3, [r4, #12]
	eor	r3, r1, r3
	eor	r7, r0, r7
	orrs	r3, r7, r3
	mov	r7, #0
	bne	.LBB1_58
	b	.LBB1_21
.LBB1_21:                               @ %if.end66
	str	r4, [sp, #32]
	str	r1, [sp, #44]
	str	r0, [sp, #40]
	ldr	r1, [sp, #164]
	b	.LBB1_22
.LBB1_22:                               @ %if.end66
	ldr	r0, [sp, #160]
	cmp	r4, #0
	str	r1, [sp, #52]
	str	r0, [sp, #48]
	beq	.LBB1_24
	b	.LBB1_23
.LBB1_23:                               @ %cond.true70
	ldr	r0, [r4, #24]
	add	r1, r10, #1
	add	r0, r0, #1
	str	r0, [sp, #56]
	str	r1, [sp, #60]
	str	r0, [sp, #28]
	ldr	r7, [r4, #28]
	b	.LBB1_27
.LBB1_24:                               @ %cond.false81.critedge
	mov	r7, #0
	add	r0, r10, #1
	mov	r1, #47
	mov	r5, r2
	b	.LBB1_25
.LBB1_25:                               @ %cond.false81.critedge
	str	r7, [sp, #56]
	str	r0, [sp, #60]
	mov	r0, r9
	str	r7, [sp, #28]
	b	.LBB1_26
.LBB1_26:                               @ %cond.false81.critedge
	bl	strrchr
	cmp	r0, #0
	mov	r2, r5
	subne	r7, r0, r9
	b	.LBB1_27
.LBB1_27:                               @ %cond.end88
	ands	r12, r11, #8
	str	r7, [sp, #24]
	bne	.LBB1_31
	b	.LBB1_28
.LBB1_28:                               @ %land.lhs.true93
	add	r1, sp, #64
	add	r3, sp, #24
	mov	r0, r9
	mov	r6, r8
	b	.LBB1_29
.LBB1_29:                               @ %land.lhs.true93
	mov	r5, r2
	mov	r7, r12
	mov	lr, pc
	mov	pc, r6
	mov	r12, r7
	b	.LBB1_30
.LBB1_30:                               @ %land.lhs.true93
	mov	r7, r0
	mov	r2, r5
	mov	r8, r6
	cmp	r7, #0
	bne	.LBB1_58
	b	.LBB1_31
.LBB1_31:                               @ %for.cond.preheader
	cmp	r4, #0
	beq	.LBB1_36
	b	.LBB1_32
.LBB1_32:                               @ %for.body.lr.ph
	add	r0, sp, #64
	add	r1, r0, #96
	ldm	r1, {r0, r1}
	ldr	r5, [sp, #64]
	ldr	r3, [sp, #68]
	b	.LBB1_33
.LBB1_33:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r7, [r4, #8]
	ldr	r6, [r4, #12]
	eor	r6, r6, r3
	eor	r7, r7, r5
	orrs	r7, r7, r6
	bne	.LBB1_35
	b	.LBB1_34
.LBB1_34:                               @ %land.lhs.true103
                                        @   in Loop: Header=BB1_33 Depth=1
	ldr	r7, [r4, #16]
	ldr	r6, [r4, #20]
	eor	r6, r6, r1
	eor	r7, r7, r0
	orrs	r7, r7, r6
	mov	r7, #0
	beq	.LBB1_58
	b	.LBB1_35
.LBB1_35:                               @ %for.inc
                                        @   in Loop: Header=BB1_33 Depth=1
	ldr	r4, [r4]
	cmp	r4, #0
	bne	.LBB1_33
	b	.LBB1_36
.LBB1_36:                               @ %for.end
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB1_52
	b	.LBB1_37
.LBB1_37:                               @ %for.end
	and	r0, r2, #3
	cmp	r0, #2
	bne	.LBB1_52
	b	.LBB1_38
.LBB1_38:                               @ %if.then117
	mov	r0, r9
	str	r12, [sp, #4]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	bl	opendir
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB1_51
	b	.LBB1_39
.LBB1_39:                               @ %while.cond.preheader
	mov	r0, r4
	bl	readdir
	cmp	r0, #0
	beq	.LBB1_50
	b	.LBB1_40
.LBB1_40:                               @ %while.body.lr.ph
	ldr	r1, [sp, #20]           @ 4-byte Reload
	rsb	r5, r10, #4096
	add	r1, r1, r9
	add	r1, r1, #1
	str	r1, [sp, #12]           @ 4-byte Spill
	ldr	r1, [sp, #16]           @ 4-byte Reload
	sub	r6, r1, #1
	b	.LBB1_41
.LBB1_41:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r7, r0
	ldrb	r1, [r7, #19]!
	cmp	r1, #46
	bne	.LBB1_44
	b	.LBB1_42
.LBB1_42:                               @ %land.lhs.true127
                                        @   in Loop: Header=BB1_41 Depth=1
	ldrb	r1, [r0, #20]
	cmp	r1, #0
	beq	.LBB1_49
	b	.LBB1_43
.LBB1_43:                               @ %land.lhs.true127
                                        @   in Loop: Header=BB1_41 Depth=1
	cmp	r1, #46
	ldrbeq	r0, [r0, #21]
	cmpeq	r0, #0
	beq	.LBB1_49
	b	.LBB1_44
.LBB1_44:                               @ %if.end142
                                        @   in Loop: Header=BB1_41 Depth=1
	mov	r0, r7
	bl	strlen
	cmp	r0, r5
	bhs	.LBB1_56
	b	.LBB1_45
.LBB1_45:                               @ %if.end151
                                        @   in Loop: Header=BB1_41 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	mov	r1, #47
	strb	r1, [r9, r0]
	ldr	r0, [sp, #12]           @ 4-byte Reload
	b	.LBB1_46
.LBB1_46:                               @ %if.end151
                                        @   in Loop: Header=BB1_41 Depth=1
	mov	r1, r7
	bl	strcpy
	add	r0, sp, #32
	mov	r1, r8
	b	.LBB1_47
.LBB1_47:                               @ %if.end151
                                        @   in Loop: Header=BB1_41 Depth=1
	mov	r2, r6
	mov	r3, r11
	str	r0, [sp]
	mov	r0, r9
	b	.LBB1_48
.LBB1_48:                               @ %if.end151
                                        @   in Loop: Header=BB1_41 Depth=1
	bl	do_nftw
	mov	r7, r0
	cmp	r7, #0
	bne	.LBB1_57
	b	.LBB1_49
.LBB1_49:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB1_41 Depth=1
	mov	r0, r4
	bl	readdir
	cmp	r0, #0
	bne	.LBB1_41
	b	.LBB1_50
.LBB1_50:                               @ %while.end
	mov	r0, r4
	bl	closedir
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r12, [sp, #4]           @ 4-byte Reload
	b	.LBB1_52
.LBB1_51:                               @ %if.else164
	bl	__errno_location
	ldr	r0, [r0]
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r12, [sp, #4]           @ 4-byte Reload
	mvn	r7, #0
	cmp	r0, #13
	bne	.LBB1_58
	b	.LBB1_52
.LBB1_52:                               @ %if.end171
	mov	r0, #0
	cmp	r12, #0
	strb	r0, [r9, r10]
	beq	.LBB1_55
	b	.LBB1_53
.LBB1_53:                               @ %land.lhs.true175
	add	r1, sp, #64
	add	r3, sp, #24
	mov	r0, r9
	mov	r4, r8
	b	.LBB1_54
.LBB1_54:                               @ %land.lhs.true175
	mov	lr, pc
	mov	pc, r4
	mov	r7, r0
	cmp	r7, #0
	moveq	r7, #0
	b	.LBB1_58
.LBB1_55:                               @ %if.end179
	mov	r7, #0
	b	.LBB1_58
.LBB1_56:                               @ %if.then148
	bl	__errno_location
	mov	r1, #36
	str	r1, [r0]
	mov	r0, r4
	bl	closedir
	mvn	r7, #0
	b	.LBB1_58
.LBB1_57:                               @ %if.then160
	mov	r0, r4
	bl	closedir
	b	.LBB1_58
.LBB1_58:                               @ %cleanup
	mov	r0, r7
	add	sp, sp, #172
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	do_nftw, .Ltmp1-do_nftw
	.cantunwind
	.fnend


	.weak	nftw64
nftw64 = nftw
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
