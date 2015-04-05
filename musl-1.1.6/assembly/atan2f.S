.section atan2f_text
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
	.file	"src/math/atan2f.bc"
	.globl	atan2f
	.align	2
	.type	atan2f,%function
.section bb0_0
atan2f:                                 @ @atan2f
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, #1065353216
	bic	r2, r1, #-2147483648
	orr	r4, r4, #1073741824
	cmp	r2, r4
	bhi	.LBB0_35
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %cond.true11
	ldr	r6, .LCPI0_10
	bic	r3, r0, #-2147483648
	cmp	r3, r6
	bhs	.LBB0_35
	b	.LBB0_3
.LCPI0_10:
	.long	2139095041              @ 0x7f800001
.section bb0_3
.LBB0_3:                                @ %do.body
	cmp	r1, #1065353216
	bne	.LBB0_5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then35
	pop	{r4, r5, r6, lr}
	b	atanf
.section bb0_5
.LBB0_5:                                @ %if.end37
	mov	r6, #2
	cmp	r3, #0
	and	r5, r6, r1, lsr #30
	orr	r6, r5, r0, lsr #31
	bne	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then45
	cmp	r6, #2
	blo	.LBB0_36
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then45
	cmp	r6, #3
	beq	.LBB0_27
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then45
	cmp	r6, #2
	beq	.LBB0_28
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end48
	lsr	r12, r0, #31
	cmp	r2, r4
	bne	.LBB0_14
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then56
	cmp	r3, r4
	bne	.LBB0_15
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then59
	ldr	r0, .LCPI0_15
	cmp	r6, #3
	bhi	.LBB0_24
	b	.LBB0_12
.LCPI0_15:
	.long	1061752795              @ 0x3f490fdb
.section bb0_12
.LBB0_12:                               @ %if.then59
	lsl	r1, r6, #2
	adr	r2, .LJTI0_1_1
	ldr	pc, [r1, r2]
.LJTI0_1_1:
	.long	.LBB0_36
	.long	.LBB0_13
	.long	.LBB0_32
	.long	.LBB0_33
.section bb0_13
.LBB0_13:                               @ %sw.bb61
	ldr	r0, .LCPI0_18
	b	.LBB0_36
.LCPI0_18:
	.long	3209236443              @ 0xbf490fdb
.section bb0_14
.LBB0_14:                               @ %if.end48
	cmp	r2, #0
	bne	.LBB0_16
	b	.LBB0_24
.section bb0_15
.LBB0_15:                               @ %if.else
	cmp	r6, #3
	bls	.LBB0_25
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end71
	cmp	r3, r4
	beq	.LBB0_24
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end71
	add	r4, r2, #218103808
	cmp	r4, r3
	blo	.LBB0_24
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end82
	add	r3, r3, #218103808
	cmp	r3, r2
	bhs	.LBB0_20
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.end82
	mov	r2, #0
	cmp	r5, #0
	bne	.LBB0_21
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.else89
	bl	__aeabi_fdiv
	bl	fabsf
	bl	atanf
	mov	r2, r0
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end92
	cmp	r6, #0
	beq	.LBB0_29
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %if.end92
	cmp	r6, #2
	bne	.LBB0_30
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %sw.bb95
	ldr	r1, .LCPI0_21
	mov	r0, r2
	bl	__aeabi_fadd
	mov	r1, r0
	ldr	r0, .LCPI0_13
	bl	__aeabi_fsub
	b	.LBB0_36
.LCPI0_13:
	.long	1078530011              @ 0x40490fdb
.LCPI0_21:
	.long	867941678               @ 0x33bbbd2e
.section bb0_24
.LBB0_24:                               @ %if.then51
	ldr	r1, .LCPI0_19
	ldr	r0, .LCPI0_20
	cmp	r12, #0
	movne	r0, r1
	b	.LBB0_36
.LCPI0_19:
	.long	3217625051              @ 0xbfc90fdb
.LCPI0_20:
	.long	1070141403              @ 0x3fc90fdb
.section bb0_25
.LBB0_25:                               @ %if.else
	lsl	r1, r6, #2
	adr	r2, .LJTI0_0_0
	mov	r0, #0
	ldr	pc, [r1, r2]
.LJTI0_0_0:
	.long	.LBB0_36
	.long	.LBB0_26
	.long	.LBB0_28
	.long	.LBB0_27
.section bb0_26
.LBB0_26:                               @ %sw.bb66
	mov	r0, #-2147483648
	b	.LBB0_36
.section bb0_27
.LBB0_27:                               @ %sw.bb47
	ldr	r0, .LCPI0_11
	b	.LBB0_36
.LCPI0_11:
	.long	3226013659              @ 0xc0490fdb
.section bb0_28
.LBB0_28:                               @ %sw.bb46
	ldr	r0, .LCPI0_14
	b	.LBB0_36
.LCPI0_14:
	.long	1078530011              @ 0x40490fdb
.section bb0_29
.LBB0_29:
	mov	r0, r2
	b	.LBB0_36
.section bb0_30
.LBB0_30:                               @ %if.end92
	cmp	r6, #1
	bne	.LBB0_34
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %sw.bb94
	eor	r0, r2, #-2147483648
	b	.LBB0_36
.section bb0_32
.LBB0_32:                               @ %sw.bb62
	ldr	r0, .LCPI0_17
	b	.LBB0_36
.LCPI0_17:
	.long	1075235812              @ 0x4016cbe4
.section bb0_33
.LBB0_33:                               @ %sw.bb63
	ldr	r0, .LCPI0_16
	b	.LBB0_36
.LCPI0_16:
	.long	3222719460              @ 0xc016cbe4
.section bb0_34
.LBB0_34:                               @ %sw.default
	ldr	r1, .LCPI0_22
	mov	r0, r2
	bl	__aeabi_fadd
	ldr	r1, .LCPI0_12
	b	.LBB0_35
.LCPI0_12:
	.long	3226013659              @ 0xc0490fdb
.LCPI0_22:
	.long	867941678               @ 0x33bbbd2e
.section bb0_35
.LBB0_35:                               @ %return
	bl	__aeabi_fadd
	b	.LBB0_36
.section bb0_36
.LBB0_36:                               @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	atan2f, .Ltmp0-atan2f
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
