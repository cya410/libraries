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
	.file	"src/network/gethostbyname2_r.bc"
	.globl	gethostbyname2_r
	.align	2
	.type	gethostbyname2_r,%function
gethostbyname2_r:                       @ @gethostbyname2_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#588
	sub	sp, sp, #588
	b	.LBB0_3
.LBB0_3:                                @ %entry
	.pad	#1024
	sub	sp, sp, #1024
	mov	r7, r1
	ldr	r1, [sp, #1652]
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r6, r0
	mov	r0, #0
	mov	r11, r3
	mov	r8, r2
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r2, r6
	mov	r3, r7
	str	r0, [r1]
	mov	r0, #2
	b	.LBB0_6
.LBB0_6:                                @ %entry
	add	r1, sp, #12
	str	r0, [sp]
	add	r0, sp, #268
	bl	__lookup_name
	mov	r9, r0
	cmp	r9, #0
	blt	.LBB0_19
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	mov	r0, #4
	cmp	r7, #10
	str	r7, [r8, #8]
	add	r7, r9, #1
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	moveq	r0, #16
	str	r0, [r8, #12]
	add	r0, r0, #4
	mul	r1, r7, r0
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	rsb	r0, r11, #0
	and	r4, r0, #3
	mov	r0, r6
	orr	r5, r4, r1
	b	.LBB0_10
.LBB0_10:                               @ %if.end
	bl	strlen
	add	r5, r5, r0
	add	r0, sp, #12
	bl	strlen
	b	.LBB0_11
.LBB0_11:                               @ %if.end
	ldr	r1, [sp, #1648]
	add	r0, r5, r0
	mov	r10, #34
	add	r0, r0, #18
	cmp	r0, r1
	bhi	.LBB0_31
	b	.LBB0_12
.LBB0_12:                               @ %if.end20
	mov	r5, r11
	add	r0, r5, r4
	str	r0, [r8, #4]
	orr	r0, r4, #12
	b	.LBB0_13
.LBB0_13:                               @ %if.end20
	add	r1, r5, r0
	add	r7, r0, r7, lsl #2
	str	r1, [r8, #16]
	add	r0, r5, r7
	b	.LBB0_14
.LBB0_14:                               @ %if.end20
	add	r1, sp, #12
	str	r0, [r5, r4]
	str	r0, [r8]
	bl	strcpy
	b	.LBB0_15
.LBB0_15:                               @ %if.end20
	ldr	r0, [r8]
	bl	strlen
	add	r0, r7, r0
	mov	r1, r6
	b	.LBB0_16
.LBB0_16:                               @ %if.end20
	add	r4, r0, #1
	ldr	r0, [r8]
	add	r11, r5, r4
	bl	strcmp
	ldr	r1, [r8, #4]
	cmp	r0, #0
	beq	.LBB0_23
	b	.LBB0_17
.LBB0_17:                               @ %if.then35
	str	r11, [r1, #4]
	mov	r1, r6
	ldr	r0, [r8, #4]
	ldr	r0, [r0, #4]
	b	.LBB0_18
.LBB0_18:                               @ %if.then35
	bl	strcpy
	ldr	r0, [r8, #4]
	ldr	r0, [r0, #4]
	bl	strlen
	add	r0, r4, r0
	add	r0, r0, r5
	add	r11, r0, #1
	b	.LBB0_24
.LBB0_19:                               @ %if.then
	ldr	r0, [sp, #1656]
	add	r1, r9, #11
	cmp	r1, #2
	bhs	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               @ %sw.bb4
	mov	r1, #3
	str	r1, [r0]
	bl	__errno_location
	ldr	r10, [r0]
	b	.LBB0_31
.LBB0_21:                               @ %if.then
	cmn	r9, #3
	bne	.LBB0_32
	b	.LBB0_22
.LBB0_22:                               @ %sw.bb2
	mov	r1, #2
	mov	r10, #11
	str	r1, [r0]
	b	.LBB0_31
.LBB0_23:                               @ %if.else
	mov	r0, #0
	str	r0, [r1, #4]
	b	.LBB0_24
.LBB0_24:                               @ %if.end48
	ldr	r0, [r8, #4]
	mov	r10, #0
	cmp	r9, #1
	str	r10, [r0, #8]
	ldr	r0, [r8, #16]
	blt	.LBB0_30
	b	.LBB0_25
.LBB0_25:                               @ %for.body.lr.ph
	add	r1, sp, #268
	mov	r4, #0
	mov	r5, #0
	add	r6, r1, #8
	b	.LBB0_26
.LBB0_26:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	str	r11, [r0]
	mov	r1, r6
	ldr	r0, [r8, #16]
	ldr	r7, [r8, #12]
	b	.LBB0_27
.LBB0_27:                               @ %for.body
                                        @   in Loop: Header=BB0_26 Depth=1
	ldr	r0, [r0, -r4]
	mov	r2, r7
	bl	memcpy
	ldr	r1, [r8, #16]
	b	.LBB0_28
.LBB0_28:                               @ %for.body
                                        @   in Loop: Header=BB0_26 Depth=1
	add	r5, r5, #1
	add	r11, r11, r7
	add	r6, r6, #28
	sub	r4, r4, #4
	subs	r9, r9, #1
	add	r0, r1, r5, lsl #2
	bne	.LBB0_26
	b	.LBB0_29
.LBB0_29:                               @ %for.end.loopexit
	sub	r0, r1, r4
	b	.LBB0_30
.LBB0_30:                               @ %for.end
	ldr	r1, [sp, #1652]
	str	r10, [r0]
	str	r8, [r1]
	b	.LBB0_31
.LBB0_31:                               @ %cleanup
	mov	r0, r10
	add	sp, sp, #588
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.LBB0_32:                               @ %if.then
	cmn	r9, #2
	bne	.LBB0_34
	b	.LBB0_33
.LBB0_33:                               @ %sw.bb
	mov	r1, #1
	mov	r10, #2
	str	r1, [r0]
	b	.LBB0_31
.LBB0_34:                               @ %sw.bb3
	mov	r1, #3
	mov	r10, #74
	str	r1, [r0]
	b	.LBB0_31
.Ltmp0:
	.size	gethostbyname2_r, .Ltmp0-gethostbyname2_r
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
