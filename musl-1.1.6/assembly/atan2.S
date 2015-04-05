.section atan2_text
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
	.file	"src/math/atan2.bc"
	.globl	atan2
	.align	2
	.type	atan2,%function
.section bb0_0
atan2:                                  @ @atan2
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r12, r0
	mov	r0, #267386880
	bic	r6, r3, #-2147483648
	mov	r5, #0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r2
	mov	r7, #0
	orr	r0, r0, #1879048192
	cmp	r6, r0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	movhi	r5, #1
	cmp	r2, #0
	movne	r4, #1
	cmp	r6, r0
	movne	r4, r5
	cmp	r4, #0
	bne	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.true18
	bic	r6, r1, #-2147483648
	mov	r5, #0
	cmp	r6, r0
	movlo	r5, #1
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %cond.true18
	cmp	r12, #0
	moveq	r7, #1
	cmp	r6, r0
	movne	r7, r5
	cmp	r7, #0
	bne	.LBB0_10
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then
	mov	r0, r12
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %return
	bl	__aeabi_dadd
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.section bb0_10
.LBB0_10:                               @ %do.body
	add	r7, r3, #1048576
	add	r7, r7, #-1073741824
	orrs	r7, r7, r2
	beq	.LBB0_14
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end43
	mov	r7, #2
	bic	r4, r1, #-2147483648
	and	r5, r7, r3, lsr #30
	orrs	r7, r4, r12
	orr	r8, r5, r1, lsr #31
	bne	.LBB0_17
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then54
	cmp	r8, #2
	bhs	.LBB0_15
	b	.LBB0_13
.section bb0_13
.LBB0_13:
	mov	r0, r12
	b	.LBB0_9
.section bb0_14
.LBB0_14:                               @ %if.then41
	mov	r0, r12
	pop	{r4, r5, r6, r7, r8, lr}
	b	atan
.section bb0_15
.LBB0_15:                               @ %if.then54
	cmp	r8, #3
	beq	.LBB0_36
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then54
	cmp	r8, #2
	beq	.LBB0_37
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end57
	bic	r7, r3, #-2147483648
	lsr	lr, r1, #31
	orrs	r6, r7, r2
	beq	.LBB0_33
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.end63
	cmp	r7, r0
	bne	.LBB0_24
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then66
	cmp	r4, r0
	bne	.LBB0_23
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then69
	ldr	r1, .LCPI0_27
	ldr	r0, .LCPI0_14
	cmp	r8, #3
	bhi	.LBB0_33
	b	.LBB0_21
.LCPI0_14:
	.long	1413754136              @ 0x54442d18
.LCPI0_27:
	.long	1072243195              @ 0x3fe921fb
.section bb0_21
.LBB0_21:                               @ %if.then69
	lsl	r2, r8, #2
	adr	r3, .LJTI0_1_1
	ldr	pc, [r2, r3]
.LJTI0_1_1:
	.long	.LBB0_9
	.long	.LBB0_22
	.long	.LBB0_42
	.long	.LBB0_43
.section bb0_22
.LBB0_22:                               @ %sw.bb71
	ldr	r1, .LCPI0_32
	ldr	r0, .LCPI0_15
	b	.LBB0_9
.LCPI0_15:
	.long	1413754136              @ 0x54442d18
.LCPI0_32:
	.long	3219726843              @ 0xbfe921fb
.section bb0_23
.LBB0_23:                               @ %if.else
	cmp	r8, #3
	bls	.LBB0_34
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end81
	cmp	r4, r0
	beq	.LBB0_33
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end81
	add	r0, r7, #67108864
	cmp	r0, r4
	blo	.LBB0_33
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end92
	cmp	r5, #0
	beq	.LBB0_28
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end92
	add	r6, r4, #67108864
	mov	r0, #0
	mov	lr, #0
	cmp	r6, r7
	blo	.LBB0_29
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.else99
	mov	r0, r12
	bl	__aeabi_ddiv
	bl	fabs
	bl	atan
	mov	lr, r1
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end102
	cmp	r8, #0
	beq	.LBB0_38
	b	.LBB0_30
.section bb0_30
.LBB0_30:                               @ %if.end102
	cmp	r8, #2
	bne	.LBB0_39
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %sw.bb106
	ldr	r2, .LCPI0_23
	ldr	r3, .LCPI0_25
	mov	r1, lr
	bl	__aeabi_dadd
	b	.LBB0_32
.LCPI0_23:
	.long	856972295               @ 0x33145c07
.LCPI0_25:
	.long	3164710438              @ 0xbca1a626
.section bb0_32
.LBB0_32:                               @ %sw.bb106
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .LCPI0_16
	ldr	r1, .LCPI0_21
	bl	__aeabi_dsub
	b	.LBB0_9
.LCPI0_16:
	.long	1413754136              @ 0x54442d18
.LCPI0_21:
	.long	1074340347              @ 0x400921fb
.section bb0_33
.LBB0_33:                               @ %if.then61
	ldr	r0, .LCPI0_33
	ldr	r1, .LCPI0_34
	cmp	lr, #0
	movne	r1, r0
	ldr	r0, .LCPI0_17
	b	.LBB0_9
.LCPI0_17:
	.long	1413754136              @ 0x54442d18
.LCPI0_33:
	.long	3220775419              @ 0xbff921fb
.LCPI0_34:
	.long	1073291771              @ 0x3ff921fb
.section bb0_34
.LBB0_34:                               @ %if.else
	lsl	r2, r8, #2
	adr	r3, .LJTI0_0_0
	mov	r0, #0
	mov	r1, #0
	ldr	pc, [r2, r3]
.LJTI0_0_0:
	.long	.LBB0_9
	.long	.LBB0_35
	.long	.LBB0_37
	.long	.LBB0_36
.section bb0_35
.LBB0_35:                               @ %sw.bb76
	mov	r1, #-2147483648
	mov	r0, #0
	b	.LBB0_9
.section bb0_36
.LBB0_36:                               @ %sw.bb56
	ldr	r1, .LCPI0_12
	ldr	r0, .LCPI0_18
	b	.LBB0_9
.LCPI0_12:
	.long	3221823995              @ 0xc00921fb
.LCPI0_18:
	.long	1413754136              @ 0x54442d18
.section bb0_37
.LBB0_37:                               @ %sw.bb55
	ldr	r1, .LCPI0_22
	ldr	r0, .LCPI0_19
	b	.LBB0_9
.LCPI0_19:
	.long	1413754136              @ 0x54442d18
.LCPI0_22:
	.long	1074340347              @ 0x400921fb
.section bb0_38
.LBB0_38:
	mov	r1, lr
	b	.LBB0_9
.section bb0_39
.LBB0_39:                               @ %if.end102
	cmp	r8, #1
	bne	.LBB0_41
	b	.LBB0_40
.section bb0_40
.LBB0_40:                               @ %sw.bb104
	eor	r1, lr, #-2147483648
	b	.LBB0_9
.section bb0_41
.LBB0_41:                               @ %sw.default
	ldr	r2, .LCPI0_24
	ldr	r3, .LCPI0_26
	mov	r1, lr
	bl	__aeabi_dadd
	ldr	r2, .LCPI0_20
	ldr	r3, .LCPI0_13
	b	.LBB0_8
.LCPI0_13:
	.long	3221823995              @ 0xc00921fb
.LCPI0_20:
	.long	1413754136              @ 0x54442d18
.LCPI0_24:
	.long	856972295               @ 0x33145c07
.LCPI0_26:
	.long	3164710438              @ 0xbca1a626
.section bb0_42
.LBB0_42:                               @ %sw.bb72
	ldr	r1, .LCPI0_31
	ldr	r0, .LCPI0_29
	b	.LBB0_9
.LCPI0_29:
	.long	2134057426              @ 0x7f3321d2
.LCPI0_31:
	.long	1073928572              @ 0x4002d97c
.section bb0_43
.LBB0_43:                               @ %sw.bb73
	ldr	r1, .LCPI0_28
	ldr	r0, .LCPI0_30
	b	.LBB0_9
.LCPI0_28:
	.long	3221412220              @ 0xc002d97c
.LCPI0_30:
	.long	2134057426              @ 0x7f3321d2
.Ltmp0:
	.size	atan2, .Ltmp0-atan2
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
