.section getaddrinfo_text
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
	.file	"src/network/getaddrinfo.bc"
	.globl	getaddrinfo
	.align	2
	.type	getaddrinfo,%function
.section bb0_0
getaddrinfo:                            @ @getaddrinfo
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
	.pad	#636
	sub	sp, sp, #636
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	.pad	#1024
	sub	sp, sp, #1024
	mov	r8, r3
	mov	r3, r2
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r4, r0
	mov	r2, #0
	mov	r6, #0
	mov	r7, #0
	cmp	r3, #0
	beq	.LBB0_15
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	ldr	r6, [r3]
	mov	r0, #63
	orr	r0, r0, #1024
	and	r2, r6, r0
	mvn	r0, #0
	cmp	r2, r6
	bne	.LBB0_45
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	ldr	r7, [r3, #4]
	mvn	r0, #5
	cmp	r7, #10
	bhi	.LBB0_45
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	mov	r5, #5
	mov	r2, #1
	orr	r5, r5, #1024
	tst	r5, r2, lsl r7
	beq	.LBB0_45
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %sw.epilog
	ldr	r2, [r3, #8]
	ldr	r3, [r3, #12]
	cmp	r2, #0
	beq	.LBB0_11
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %sw.epilog
	cmp	r2, #2
	bne	.LBB0_12
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %sw.bb6
	cmp	r3, #0
	mov	r2, #17
	mvnne	r0, #7
	cmpne	r3, #17
	beq	.LBB0_15
	b	.LBB0_45
.section bb0_11
.LBB0_11:
	mov	r2, r3
	b	.LBB0_15
.section bb0_12
.LBB0_12:                               @ %sw.epilog
	mvn	r0, #6
	cmp	r2, #1
	bne	.LBB0_45
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %sw.bb2
	mov	r2, #6
	cmp	r3, #0
	beq	.LBB0_15
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %sw.bb2
	mvn	r0, #7
	cmp	r3, #6
	bne	.LBB0_45
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end12
	add	r5, sp, #1024
	mov	r3, r6
	add	r10, r5, #628
	mov	r0, r10
	bl	__lookup_serv
	cmp	r0, #0
	blt	.LBB0_45
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end15
	mov	r9, r0
	add	r0, sp, #308
	add	r1, sp, #52
	mov	r2, r4
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end15
	mov	r3, r7
	str	r6, [sp]
	bl	__lookup_name
	mov	r6, r0
                                        @ kill: R0<def> R6<kill>
	cmp	r6, #0
	blt	.LBB0_45
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end21
	mul	r0, r6, r9
	rsb	r1, r0, r0, lsl #4
	mov	r0, #1
	orr	r4, r0, r1, lsl #2
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end21
	add	r0, sp, #52
	str	r1, [sp, #16]           @ 4-byte Spill
	bl	strlen
	mov	r5, r0
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end21
	mov	r0, #1
	add	r1, r4, r5
	bl	calloc
	mov	r1, r0
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end21
	mvn	r0, #9
	str	r1, [sp, #28]           @ 4-byte Spill
	cmp	r1, #0
	beq	.LBB0_45
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end29
	mov	r0, #0
	str	r8, [sp, #12]           @ 4-byte Spill
	cmp	r5, #0
	str	r0, [sp, #48]           @ 4-byte Spill
	beq	.LBB0_24
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.then31
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	add	r2, r5, #1
	add	r0, r1, r0, lsl #2
	add	r1, sp, #52
	str	r0, [sp, #48]           @ 4-byte Spill
	bl	memcpy
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end35
	mov	r1, r9
	cmp	r6, #1
	str	r1, [sp, #24]           @ 4-byte Spill
	blt	.LBB0_44
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %for.cond37.preheader.lr.ph
	orr	r0, r10, #2
	mov	r3, #0
	mov	r7, #0
	str	r0, [sp, #20]           @ 4-byte Spill
	sub	r0, r6, #1
	mov	r6, #0
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %for.cond37.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_30 Depth 2
	cmp	r1, #1
	blt	.LBB0_43
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %for.body39.lr.ph
                                        @   in Loop: Header=BB0_26 Depth=1
	ldr	r2, [sp, #28]           @ 4-byte Reload
	rsb	r0, r7, r7, lsl #4
	ldr	r9, [sp, #20]           @ 4-byte Reload
	str	r7, [sp, #36]           @ 4-byte Spill
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %for.body39.lr.ph
                                        @   in Loop: Header=BB0_26 Depth=1
	mov	r10, r1
	str	r3, [sp, #40]           @ 4-byte Spill
	add	r7, r2, r0, lsl #2
	rsb	r0, r3, r3, lsl #3
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %for.body39.lr.ph
                                        @   in Loop: Header=BB0_26 Depth=1
	add	r2, sp, #308
	add	r5, r2, r0, lsl #2
	add	r0, r5, #4
	add	r11, r5, #8
	str	r0, [sp, #44]           @ 4-byte Spill
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %for.body39
                                        @   Parent Loop BB0_26 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r0, [r9]
	ldr	r1, [r5]
	mov	r2, #2
	mov	r8, r7
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %for.body39
                                        @   in Loop: Header=BB0_30 Depth=2
	mov	r3, #28
	add	r4, r8, #32
	add	r12, r8, #12
	str	r6, [r8]
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %for.body39
                                        @   in Loop: Header=BB0_30 Depth=2
	add	r7, r8, #60
	cmp	r0, #6
	moveq	r2, #1
	cmp	r1, #2
	b	.LBB0_33
.section bb0_33
.LBB0_33:                               @ %for.body39
                                        @   in Loop: Header=BB0_30 Depth=2
	moveq	r3, #16
	stmib	r8, {r1, r2}
	stm	r12, {r0, r3, r4}
	ldr	r0, [sp, #48]           @ 4-byte Reload
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %for.body39
                                        @   in Loop: Header=BB0_30 Depth=2
	str	r0, [r8, #24]
	str	r7, [r8, #28]
	ldr	r0, [r5]
	cmp	r0, #10
	bne	.LBB0_37
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %sw.bb78
                                        @   in Loop: Header=BB0_30 Depth=2
	mov	r0, #10
	strh	r0, [r8, #32]
	ldrh	r0, [r9, #-2]
	bl	htons
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %sw.bb78
                                        @   in Loop: Header=BB0_30 Depth=2
	strh	r0, [r8, #34]
	ldr	r0, [sp, #44]           @ 4-byte Reload
	mov	r1, r11
	mov	r2, #16
	ldr	r0, [r0]
	str	r0, [r8, #56]
	add	r0, r8, #40
	b	.LBB0_40
.section bb0_37
.LBB0_37:                               @ %for.body39
                                        @   in Loop: Header=BB0_30 Depth=2
	cmp	r0, #2
	bne	.LBB0_41
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %sw.bb65
                                        @   in Loop: Header=BB0_30 Depth=2
	mov	r0, #2
	strh	r0, [r8, #32]
	ldrh	r0, [r9, #-2]
	bl	htons
	b	.LBB0_39
.section bb0_39
.LBB0_39:                               @ %sw.bb65
                                        @   in Loop: Header=BB0_30 Depth=2
	strh	r0, [r8, #34]
	add	r0, r8, #36
	mov	r1, r11
	mov	r2, #4
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %for.inc
                                        @   in Loop: Header=BB0_30 Depth=2
	bl	memcpy
	b	.LBB0_41
.section bb0_41
.LBB0_41:                               @ %for.inc
                                        @   in Loop: Header=BB0_30 Depth=2
	add	r9, r9, #4
	subs	r10, r10, #1
	bne	.LBB0_30
	b	.LBB0_42
.section bb0_42
.LBB0_42:                               @ %for.cond37.for.inc99_crit_edge
                                        @   in Loop: Header=BB0_26 Depth=1
	ldr	r1, [sp, #24]           @ 4-byte Reload
	ldr	r7, [sp, #36]           @ 4-byte Reload
	ldr	r3, [sp, #40]           @ 4-byte Reload
	add	r7, r1, r7
	b	.LBB0_43
.section bb0_43
.LBB0_43:                               @ %for.inc99
                                        @   in Loop: Header=BB0_26 Depth=1
	ldr	r2, [sp, #32]           @ 4-byte Reload
	add	r0, r3, #1
	cmp	r3, r2
	mov	r3, r0
	bne	.LBB0_26
	b	.LBB0_44
.section bb0_44
.LBB0_44:                               @ %for.end101
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r2, [sp, #28]           @ 4-byte Reload
	add	r1, r2, r0, lsl #2
	mov	r0, #0
	str	r0, [r1, #-32]
	ldr	r1, [sp, #12]           @ 4-byte Reload
	str	r2, [r1]
	b	.LBB0_45
.section bb0_45
.LBB0_45:                               @ %cleanup
	add	sp, sp, #636
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getaddrinfo, .Ltmp0-getaddrinfo
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
