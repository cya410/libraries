.section getgrent_a_text
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
	.file	"src/passwd/getgrent_a.bc"
	.globl	__getgrent_a
	.align	2
	.type	__getgrent_a,%function
.section bb0_0
__getgrent_a:                           @ @__getgrent_a
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
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r7, r0
	mov	r1, sp
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r0, #1
	mov	r8, r3
	mov	r5, r2
	bl	pthread_setcancelstate
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r0, r5
	mov	r1, r8
	mov	r2, r7
	bl	getline
	cmp	r0, #0
	blt	.LBB0_15
	b	.LBB0_6
.section bb0_6
.LBB0_6:
	ldr	r10, [sp, #44]
	ldr	r9, [sp, #40]
	mov	r11, #0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_11 Depth 2
	ldr	r1, [r5]
	add	r0, r0, r1
	mov	r1, #58
	strb	r11, [r0, #-1]
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
                                        @   in Loop: Header=BB0_7 Depth=1
	ldr	r0, [r5]
	str	r0, [r4]
	add	r0, r0, #1
	bl	strchr
	cmp	r0, #0
	beq	.LBB0_14
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end6
                                        @   in Loop: Header=BB0_7 Depth=1
	strb	r11, [r0], #1
	mov	r1, #58
	str	r0, [r4, #4]
	bl	strchr
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB0_14
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end11
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r1, #0
	mov	r0, r6
	strb	r1, [r6]
	ldrb	r2, [r0, #1]!
	sub	r2, r2, #48
	cmp	r2, #9
	bhi	.LBB0_13
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.body.i
                                        @   Parent Loop BB0_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r1, r1, r1, lsl #2
	mov	r3, r6
	mov	r6, r0
	add	r1, r2, r1, lsl #1
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.body.i
                                        @   in Loop: Header=BB0_11 Depth=2
	ldrb	r2, [r3, #2]!
	sub	r2, r2, #48
	mov	r0, r3
	cmp	r2, #10
	blo	.LBB0_11
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %atou.exit
                                        @   in Loop: Header=BB0_7 Depth=1
	str	r1, [r4, #8]
	ldrb	r1, [r0]
	cmp	r1, #58
	beq	.LBB0_18
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %for.cond.backedge
                                        @   in Loop: Header=BB0_7 Depth=1
	mov	r0, r5
	mov	r1, r8
	mov	r2, r7
	bl	getline
	cmp	r0, #0
	bge	.LBB0_7
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.then
	ldr	r0, [r5]
	bl	free
	mov	r4, #0
	str	r4, [r5]
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %end
	ldr	r0, [sp]
	mov	r1, #0
	bl	pthread_setcancelstate
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %return
	mov	r0, r4
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.section bb0_18
.LBB0_18:                               @ %if.end17
	mov	r1, #0
	strb	r1, [r0]
	ldrb	r0, [r6, #2]!
	cmp	r0, #0
	mov	r1, r6
	movne	r0, #1
	str	r0, [r10]
	b	.LBB0_20
.section bb0_19
.LBB0_19:                               @ %for.cond21
                                        @   in Loop: Header=BB0_20 Depth=1
	cmp	r2, #44
	add	r1, r1, #1
	addeq	r0, r0, #1
	streq	r0, [r10]
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %for.cond21
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r1]
	cmp	r2, #0
	bne	.LBB0_19
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %for.end29
	ldr	r0, [r9]
	bl	free
	ldr	r0, [r10]
	add	r1, r0, #1
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %for.end29
	mov	r0, #4
	bl	calloc
	str	r0, [r9]
	cmp	r0, #0
	beq	.LBB0_28
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end33
	ldrb	r1, [r6]
	cmp	r1, #0
	beq	.LBB0_29
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.then35
	str	r6, [r0]
	mov	r1, #0
	mov	r0, #0
	b	.LBB0_26
.section bb0_25
.LBB0_25:                               @ %for.cond38
                                        @   in Loop: Header=BB0_26 Depth=1
	cmp	r2, #44
	strbeq	r1, [r6], #1
	addeq	r0, r0, #1
	ldreq	r2, [r9]
	streq	r6, [r2, r0, lsl #2]
	add	r6, r6, #1
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %for.cond38
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r2, [r6]
	cmp	r2, #0
	bne	.LBB0_25
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %for.end52
	ldr	r1, [r9]
	add	r0, r1, r0, lsl #2
	mov	r1, #0
	str	r1, [r0, #4]
	b	.LBB0_30
.section bb0_28
.LBB0_28:                               @ %if.then32
	ldr	r0, [r5]
	bl	free
	mov	r4, #0
	str	r4, [r5]
	b	.LBB0_17
.section bb0_29
.LBB0_29:                               @ %if.else
	mov	r1, #0
	str	r1, [r0]
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end58
	ldr	r0, [r9]
	str	r0, [r4, #12]
	b	.LBB0_16
.Ltmp0:
	.size	__getgrent_a, .Ltmp0-__getgrent_a
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
