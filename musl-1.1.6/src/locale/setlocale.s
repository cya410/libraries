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
	.file	"src/locale/setlocale.bc"
	.globl	setlocale
	.align	2
	.type	setlocale,%function
setlocale:                              @ @setlocale
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	ldr	r8, .LCPI0_4
	mov	r6, r0
	b	.LBB0_3
.LCPI0_4:
	.long	__libc
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r5, #0
	ldr	r0, [r8, #56]
	cmp	r0, #0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	ldreq	r0, .LCPI0_5
	addeq	r0, r0, #50
	streq	r0, [r8, #56]
	cmp	r6, #6
	bhi	.LBB0_36
	b	.LBB0_5
.LCPI0_5:
	.long	buf
.LBB0_5:                                @ %if.end2
	bne	.LBB0_24
	b	.LBB0_6
.LBB0_6:                                @ %if.then4
	cmp	r4, #0
	beq	.LBB0_18
	b	.LBB0_7
.LBB0_7:                                @ %if.then6
	ldrb	r0, [r4]
	mov	r5, #0
	cmp	r0, #0
	beq	.LBB0_17
	b	.LBB0_8
.LBB0_8:                                @ %land.lhs.true
	ldrb	r0, [r4, #1]
	cmp	r0, #59
	bne	.LBB0_17
	b	.LBB0_9
.LBB0_9:                                @ %land.lhs.true12
	mov	r0, r4
	bl	strlen
	cmp	r0, #51
	blo	.LBB0_17
	b	.LBB0_10
.LBB0_10:                               @ %if.then15
	ldrb	r0, [r4]
	mov	r5, sp
	mov	r7, #0
	mov	r1, r5
	b	.LBB0_11
.LBB0_11:                               @ %if.then15
	strb	r0, [sp]
	mov	r0, #0
	strb	r7, [sp, #1]
	bl	setlocale
	mov	r6, #2
	strb	r7, [sp, #15]
	b	.LBB0_12
.LBB0_12:                               @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_13 Depth 2
	add	r0, r4, r6, lsl #4
	mov	r2, #15
	sub	r1, r0, #30
	mov	r0, r5
	bl	memcpy
	mvn	r0, #13
	b	.LBB0_13
.LBB0_13:                               @ %land.rhs
                                        @   Parent Loop BB0_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r1, [r5, -r0]
	cmp	r1, #59
	bne	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               @ %for.body32
                                        @   in Loop: Header=BB0_13 Depth=2
	strb	r7, [r5, -r0]
	adds	r0, r0, #1
	bne	.LBB0_13
	b	.LBB0_15
.LBB0_15:                               @ %for.end
                                        @   in Loop: Header=BB0_12 Depth=1
	mov	r0, r6
	mov	r1, r5
	bl	setlocale
	add	r6, r6, #1
	cmp	r6, #5
	bne	.LBB0_12
	b	.LBB0_16
.LBB0_16:                               @ %for.end37
	add	r1, r4, #50
	mov	r0, #5
	bl	setlocale
	b	.LBB0_18
.LBB0_17:                               @ %for.body44
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r4
	bl	setlocale
	add	r5, r5, #1
	cmp	r5, #6
	bne	.LBB0_17
	b	.LBB0_18
.LBB0_18:                               @ %if.end50
	ldr	r5, .LCPI0_6
	mov	r1, #59
	mov	r2, #50
	mov	r0, r5
	b	.LBB0_19
.LCPI0_6:
	.long	buf
.LBB0_19:                               @ %if.end50
	bl	memset
	ldr	r0, [r8, #52]
	mov	r1, #67
	mov	r4, r5
	b	.LBB0_20
.LBB0_20:                               @ %if.end50
	mov	r7, #0
	cmp	r0, #0
	movne	r1, #85
	strb	r1, [r4], #2
	b	.LBB0_21
.LBB0_21:                               @ %for.body57
                                        @ =>This Inner Loop Header: Depth=1
	sub	r0, r8, r7, lsl #2
	ldr	r0, [r0, #60]
	cmp	r0, #0
	beq	.LBB0_23
	b	.LBB0_22
.LBB0_22:                               @ %if.then61
                                        @   in Loop: Header=BB0_21 Depth=1
	add	r6, r0, #8
	mov	r0, r6
	bl	strlen
	mov	r2, r0
	mov	r0, r4
	mov	r1, r6
	bl	memcpy
	b	.LBB0_23
.LBB0_23:                               @ %for.inc72
                                        @   in Loop: Header=BB0_21 Depth=1
	sub	r7, r7, #1
	add	r4, r4, #16
	cmn	r7, #3
	bne	.LBB0_21
	b	.LBB0_36
.LBB0_24:                               @ %if.end75
	cmp	r4, #0
	beq	.LBB0_29
	b	.LBB0_25
.LBB0_25:                               @ %if.then77
	mov	r5, r8
	mov	r1, r6
	mov	r2, r4
	ldr	r7, [r5, #52]!
	b	.LBB0_26
.LBB0_26:                               @ %if.then77
	mov	r0, r5
	bl	__setlocalecat
	ldr	r0, [r5]
	cmp	r7, r0
	beq	.LBB0_29
	b	.LBB0_27
.LBB0_27:                               @ %if.then81
	sub	r4, r7, r0
	b	.LBB0_28
.LBB0_28:                               @ %do.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r2, r8
	ldr	r0, [r2, #48]!
	add	r1, r4, r0
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB0_28
	b	.LBB0_29
.LBB0_29:                               @ %if.end84
	cmp	r6, #5
	beq	.LBB0_32
	b	.LBB0_30
.LBB0_30:                               @ %if.end84
	cmp	r6, #1
	bne	.LBB0_33
	b	.LBB0_31
.LBB0_31:
	ldr	r5, .LCPI0_7
	b	.LBB0_36
.LCPI0_7:
	.long	.L.str1
.LBB0_32:                               @ %sw.bb88
	ldr	r0, [r8, #56]
	ldr	r5, .LCPI0_8
	ldrb	r1, [r0]
	cmp	r1, #0
	movne	r5, r0
	b	.LBB0_36
.LCPI0_8:
	.long	.L.str1
.LBB0_33:                               @ %if.end84
	cmp	r6, #0
	bne	.LBB0_35
	b	.LBB0_34
.LBB0_34:                               @ %sw.bb
	ldr	r0, [r8, #52]
	ldr	r1, .LCPI0_11
	ldr	r5, .LCPI0_9
	cmp	r0, #0
	movne	r5, r1
	b	.LBB0_36
.LCPI0_9:
	.long	.L.str1
.LCPI0_11:
	.long	.L.str
.LBB0_35:                               @ %sw.default
	add	r0, r8, r6, lsl #2
	ldr	r5, .LCPI0_10
	ldr	r0, [r0, #52]
	cmp	r0, #0
	addne	r5, r0, #8
	b	.LBB0_36
.LCPI0_10:
	.long	.L.str1
.LBB0_36:                               @ %return
	mov	r0, r5
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	setlocale, .Ltmp0-setlocale
	.cantunwind
	.fnend

	.hidden	__libc
	.type	buf,%object             @ @buf
	.local	buf
	.comm	buf,66,1
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"C.UTF-8"
	.size	.L.str, 8

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"C"
	.size	.L.str1, 2

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
