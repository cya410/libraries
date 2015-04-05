.section cosf_text
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
	.file	"src/math/cosf.bc"
	.globl	cosf
	.align	2
	.type	cosf,%function
.section bb0_0
cosf:                                   @ @cosf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	ldr	r1, .LCPI0_13
	bic	r4, r0, #-2147483648
	cmp	r4, r1
	bhi	.LBB0_5
	b	.LBB0_3
.LCPI0_13:
	.long	1061752794              @ 0x3f490fda
.section bb0_3
.LBB0_3:                                @ %if.then
	lsr	r1, r4, #23
	cmp	r1, #114
	bhi	.LBB0_10
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %do.body3
	mov	r1, #998244352
	orr	r1, r1, #1073741824
	bl	__aeabi_fadd
	str	r0, [sp, #4]
	mov	r0, #1065353216
	b	.LBB0_35
.section bb0_5
.LBB0_5:                                @ %if.end5
	ldr	r1, .LCPI0_14
	lsr	r5, r0, #31
	cmp	r4, r1
	bhi	.LBB0_11
	b	.LBB0_6
.LCPI0_14:
	.long	1081824209              @ 0x407b53d1
.section bb0_6
.LBB0_6:                                @ %if.then8
	bl	__aeabi_f2d
	mov	lr, r0
	ldr	r0, .LCPI0_27
	mov	r12, r1
	cmp	r4, r0
	blo	.LBB0_16
	b	.LBB0_7
.LCPI0_27:
	.long	1075235812              @ 0x4016cbe4
.section bb0_7
.LBB0_7:                                @ %if.then11
	ldr	r0, .LCPI0_30
	ldr	r3, .LCPI0_31
	ldr	r2, .LCPI0_23
	cmp	r5, #0
	b	.LBB0_8
.LCPI0_23:
	.long	1413754136              @ 0x54442d18
.LCPI0_30:
	.long	1074340347              @ 0x400921fb
.LCPI0_31:
	.long	3221823995              @ 0xc00921fb
.section bb0_8
.LBB0_8:                                @ %if.then11
	mov	r1, r12
	movne	r3, r0
	mov	r0, lr
	bl	__aeabi_dadd
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	bl	__cosdf
	eor	r0, r0, #-2147483648
	b	.LBB0_35
.section bb0_10
.LBB0_10:                               @ %if.end
	bl	__aeabi_f2d
	b	.LBB0_15
.section bb0_11
.LBB0_11:                               @ %if.end26
	ldr	r1, .LCPI0_15
	cmp	r4, r1
	bhi	.LBB0_18
	b	.LBB0_12
.LCPI0_15:
	.long	1088565717              @ 0x40e231d5
.section bb0_12
.LBB0_12:                               @ %if.then29
	ldr	r1, .LCPI0_16
	cmp	r4, r1
	blo	.LBB0_20
	b	.LBB0_13
.LCPI0_16:
	.long	1085271520              @ 0x40afede0
.section bb0_13
.LBB0_13:                               @ %if.then32
	ldr	r1, .LCPI0_21
	ldr	r4, .LCPI0_22
	cmp	r5, #0
	movne	r4, r1
	b	.LBB0_14
.LCPI0_21:
	.long	1075388923              @ 0x401921fb
.LCPI0_22:
	.long	3222872571              @ 0xc01921fb
.section bb0_14
.LBB0_14:                               @ %if.then32
	bl	__aeabi_f2d
	ldr	r2, .LCPI0_24
	mov	r3, r4
	bl	__aeabi_dadd
	b	.LBB0_15
.LCPI0_24:
	.long	1413754136              @ 0x54442d18
.section bb0_15
.LBB0_15:                               @ %if.end
	add	sp, sp, #16
	pop	{r4, r5, r11, lr}
	b	__cosdf
.section bb0_16
.LBB0_16:                               @ %if.else
	cmp	r5, #0
	beq	.LBB0_25
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then18
	ldr	r2, .LCPI0_25
	ldr	r3, .LCPI0_28
	mov	r0, lr
	mov	r1, r12
	b	.LBB0_28
.LCPI0_25:
	.long	1413754136              @ 0x54442d18
.LCPI0_28:
	.long	1073291771              @ 0x3ff921fb
.section bb0_18
.LBB0_18:                               @ %if.end54
	lsr	r1, r4, #23
	cmp	r1, #255
	blo	.LBB0_22
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then57
	mov	r1, r0
	bl	__aeabi_fsub
	b	.LBB0_35
.section bb0_20
.LBB0_20:                               @ %if.else43
	cmp	r5, #0
	beq	.LBB0_27
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.then45
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .LCPI0_17
	ldr	r1, .LCPI0_19
	b	.LBB0_26
.LCPI0_17:
	.long	2134057426              @ 0x7f3321d2
.LCPI0_19:
	.long	3222460796              @ 0xc012d97c
.section bb0_22
.LBB0_22:                               @ %if.end59
	add	r1, sp, #8
	bl	__rem_pio2f
	and	r0, r0, #3
	cmp	r0, #2
	beq	.LBB0_30
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end59
	cmp	r0, #1
	bne	.LBB0_31
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %sw.bb63
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #8]
	eor	r1, r1, #-2147483648
	b	.LBB0_34
.section bb0_25
.LBB0_25:                               @ %if.else22
	ldr	r0, .LCPI0_26
	ldr	r1, .LCPI0_29
	mov	r2, lr
	mov	r3, r12
	b	.LBB0_26
.LCPI0_26:
	.long	1413754136              @ 0x54442d18
.LCPI0_29:
	.long	1073291771              @ 0x3ff921fb
.section bb0_26
.LBB0_26:                               @ %if.else22
	bl	__aeabi_dsub
	b	.LBB0_29
.section bb0_27
.LBB0_27:                               @ %if.else50
	bl	__aeabi_f2d
	ldr	r2, .LCPI0_18
	ldr	r3, .LCPI0_20
	b	.LBB0_28
.LCPI0_18:
	.long	2134057426              @ 0x7f3321d2
.LCPI0_20:
	.long	3222460796              @ 0xc012d97c
.section bb0_28
.LBB0_28:                               @ %if.then18
	bl	__aeabi_dadd
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.then18
	add	sp, sp, #16
	pop	{r4, r5, r11, lr}
	b	__sindf
.section bb0_30
.LBB0_30:                               @ %sw.bb66
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	b	.LBB0_9
.section bb0_31
.LBB0_31:                               @ %if.end59
	cmp	r0, #0
	bne	.LBB0_33
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %sw.bb
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	bl	__cosdf
	b	.LBB0_35
.section bb0_33
.LBB0_33:                               @ %sw.default
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	b	.LBB0_34
.section bb0_34
.LBB0_34:                               @ %return
	bl	__sindf
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %return
	add	sp, sp, #16
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	cosf, .Ltmp0-cosf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
