.section encrypt_text
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
	.file	"src/crypt/encrypt.bc"
	.globl	setkey
	.align	2
	.type	setkey,%function
.section bb0_0
setkey:                                 @ @setkey
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #0
	mov	lr, sp
	mov	r3, #0
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_3 Depth 2
	mov	r1, #0
	mov	r2, #0
	strb	r12, [lr, r3]
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %for.body3
                                        @   Parent Loop BB0_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r4, [r0, -r1]
	add	r5, r1, #7
	and	r2, r2, #255
	sub	r1, r1, #1
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.body3
                                        @   in Loop: Header=BB0_3 Depth=2
	cmp	r5, #0
	and	r4, r4, #1
	orr	r2, r2, r4, lsl r5
	strb	r2, [lr, r3]
	bgt	.LBB0_3
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.inc7
                                        @   in Loop: Header=BB0_2 Depth=1
	add	r3, r3, #1
	add	r0, r0, #8
	cmp	r3, #8
	bne	.LBB0_2
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.end8
	ldr	r1, .LCPI0_0
	mov	r0, sp
	bl	__des_setkey
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.LCPI0_0:
	.long	__encrypt_key
.Ltmp0:
	.size	setkey, .Ltmp0-setkey
	.cantunwind
	.fnend

	.globl	encrypt
	.align	2
	.type	encrypt,%function
.section bb1_0
encrypt:                                @ @encrypt
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#152
	sub	sp, sp, #152
	mov	r4, r0
	mov	r12, #0
	add	r8, sp, #16
	mov	r3, #0
	mov	r2, r4
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %for.body
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_4 Depth 2
	mov	r7, #0
	mov	r6, #0
	str	r12, [r8, r3, lsl #2]
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %for.body3
                                        @   Parent Loop BB1_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r0, [r2, -r7]
	add	r5, r7, #31
	sub	r7, r7, #1
	cmp	r5, #0
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %for.body3
                                        @   in Loop: Header=BB1_4 Depth=2
	and	r0, r0, #1
	orr	r6, r6, r0, lsl r5
	str	r6, [r8, r3, lsl #2]
	bgt	.LBB1_4
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %for.inc5
                                        @   in Loop: Header=BB1_3 Depth=1
	add	r3, r3, #1
	add	r2, r2, #32
	cmp	r3, #2
	bne	.LBB1_3
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %for.end6
	cmp	r1, #0
	beq	.LBB1_11
	b	.LBB1_8
.section bb1_8
.LBB1_8:
	ldr	r1, .LCPI1_0
	mov	r0, #0
	add	r2, sp, #24
	b	.LBB1_9
.LCPI1_0:
	.long	__encrypt_key
.section bb1_9
.LBB1_9:                                @ %for.body10
                                        @ =>This Inner Loop Header: Depth=1
	sub	r3, r1, r0
	ldr	r7, [r3, #60]
	ldr	r3, [r3, #124]
	str	r7, [r2, r0]
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %for.body10
                                        @   in Loop: Header=BB1_9 Depth=1
	add	r7, r2, r0
	add	r0, r0, #4
	str	r3, [r7, #64]
	cmp	r0, #64
	bne	.LBB1_9
	b	.LBB1_12
.section bb1_11
.LBB1_11:
	ldr	r2, .LCPI1_1
	b	.LBB1_12
.LCPI1_1:
	.long	__encrypt_key
.section bb1_12
.LBB1_12:                               @ %if.end
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	mov	r7, #1
	mov	r6, #0
	b	.LBB1_13
.section bb1_13
.LBB1_13:                               @ %if.end
	add	r3, r8, #4
	str	r7, [sp]
	str	r6, [sp, #4]
	str	r2, [sp, #8]
	mov	r2, r8
	bl	__do_des
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %for.cond26.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_15 Depth 2
	mov	r0, #0
	b	.LBB1_15
.section bb1_15
.LBB1_15:                               @ %for.body29
                                        @   Parent Loop BB1_14 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r8, r6, lsl #2]
	add	r2, r0, #31
	cmp	r2, #0
	and	r1, r7, r1, lsr r2
	strb	r1, [r4, -r0]
	sub	r0, r0, #1
	bgt	.LBB1_15
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %for.inc37
                                        @   in Loop: Header=BB1_14 Depth=1
	add	r6, r6, #1
	add	r4, r4, #32
	cmp	r6, #2
	bne	.LBB1_14
	b	.LBB1_17
.section bb1_17
.LBB1_17:                               @ %for.end39
	add	sp, sp, #152
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp1:
	.size	encrypt, .Ltmp1-encrypt
	.cantunwind
	.fnend

	.type	__encrypt_key,%object   @ @__encrypt_key
	.local	__encrypt_key
	.comm	__encrypt_key,128,4

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
