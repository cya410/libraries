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
	.file	"src/network/inet_aton.bc"
	.globl	__inet_aton
	.align	2
	.type	__inet_aton,%function
__inet_aton:                            @ @__inet_aton
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, #0
	mov	r8, r1
	mov	r7, r0
	add	r6, sp, #4
	b	.LBB0_4
.LBB0_4:                                @ %entry
	add	r9, sp, #8
	mov	r4, #0
	str	r5, [sp, #20]
	str	r5, [sp, #16]
	str	r5, [sp, #12]
	str	r5, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0
	bl	strtoul
	b	.LBB0_6
.LBB0_6:                                @ %for.body
                                        @   in Loop: Header=BB0_5 Depth=1
	str	r0, [r9, r4, lsl #2]
	ldr	r0, [sp, #4]
	cmp	r0, r7
	beq	.LBB0_21
	b	.LBB0_7
.LBB0_7:                                @ %lor.lhs.false
                                        @   in Loop: Header=BB0_5 Depth=1
	ldrb	r1, [r0]
	cmp	r1, #0
	cmpne	r1, #46
	bne	.LBB0_21
	b	.LBB0_8
.LBB0_8:                                @ %lor.lhs.false5
                                        @   in Loop: Header=BB0_5 Depth=1
	ldrb	r2, [r7]
	sub	r2, r2, #48
	cmp	r2, #9
	bhi	.LBB0_21
	b	.LBB0_9
.LBB0_9:                                @ %if.end
                                        @   in Loop: Header=BB0_5 Depth=1
	cmp	r1, #0
	beq	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               @ %if.end11
                                        @   in Loop: Header=BB0_5 Depth=1
	add	r4, r4, #1
	add	r7, r0, #1
	cmp	r4, #4
	blt	.LBB0_5
	b	.LBB0_11
.LBB0_11:                               @ %for.end
	mov	r0, #0
	cmp	r4, #4
	bhi	.LBB0_18
	b	.LBB0_12
.LBB0_12:                               @ %for.end
	lsl	r1, r4, #2
	adr	r2, .LJTI0_0_0
	mov	r0, #0
	mov	r5, #0
	ldr	pc, [r1, r2]
.LJTI0_0_0:
	.long	.LBB0_13
	.long	.LBB0_14
	.long	.LBB0_16
	.long	.LBB0_18
	.long	.LBB0_21
.LBB0_13:                               @ %sw.bb
	ldr	r1, [sp, #8]
	bic	r0, r1, #-16777216
	lsr	r1, r1, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	b	.LBB0_15
.LBB0_14:                               @ %for.end.sw.bb19_crit_edge
	ldr	r0, [sp, #12]
	b	.LBB0_15
.LBB0_15:                               @ %sw.bb19
	mov	r1, #255
	orr	r1, r1, #65280
	and	r1, r0, r1
	lsr	r0, r0, #16
	str	r1, [sp, #16]
	str	r0, [sp, #12]
	b	.LBB0_17
.LBB0_16:                               @ %for.end.sw.bb25_crit_edge
	ldr	r1, [sp, #16]
	b	.LBB0_17
.LBB0_17:                               @ %sw.bb25
	and	r0, r1, #255
	str	r0, [sp, #20]
	lsr	r0, r1, #8
	str	r0, [sp, #16]
	mov	r0, #0
	b	.LBB0_18
.LBB0_18:                               @ %for.body34
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r1, [r9, r0, lsl #2]
	cmp	r1, #255
	bhi	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               @ %if.end39
                                        @   in Loop: Header=BB0_18 Depth=1
	strb	r1, [r8, r0]
	add	r0, r0, #1
	mov	r5, #1
	cmp	r0, #4
	blt	.LBB0_18
	b	.LBB0_21
.LBB0_20:
	mov	r5, #0
	b	.LBB0_21
.LBB0_21:                               @ %return
	mov	r0, r5
	add	sp, sp, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__inet_aton, .Ltmp0-__inet_aton
	.cantunwind
	.fnend


	.weak	inet_aton
inet_aton = __inet_aton
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
