.section scalbf_text
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
	.file	"src/math/scalbf.bc"
	.globl	scalbf
	.align	2
	.type	scalbf,%function
.section bb0_0
scalbf:                                 @ @scalbf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	mov	r0, #1065353216
	mov	r5, r1
	orr	r0, r0, #1073741824
	bic	r1, r4, #-2147483648
	cmp	r1, r0
	bhi	.LBB0_9
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %cond.true11
	ldr	r2, .LCPI0_4
	bic	r1, r5, #-2147483648
	cmp	r1, r2
	bhs	.LBB0_9
	b	.LBB0_4
.LCPI0_4:
	.long	2139095041              @ 0x7f800001
.section bb0_4
.LBB0_4:                                @ %cond.true28
	and	r0, r5, r0
	lsr	r0, r0, #23
	cmp	r0, #255
	bhs	.LBB0_7
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end50
	mov	r0, r5
	bl	rintf
	mov	r1, r5
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	.LBB0_13
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then54
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_12
.section bb0_7
.LBB0_7:                                @ %if.then45
	mov	r0, r5
	mov	r1, #0
	bl	__aeabi_fcmple
	mov	r6, r0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then45
	mov	r0, r5
	mov	r1, #0
	bl	__aeabi_fcmpun
	orrs	r0, r0, r6
	bne	.LBB0_11
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_fmul
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.section bb0_11
.LBB0_11:                               @ %if.else
	eor	r1, r5, #-2147483648
	mov	r0, r4
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %return
	bl	__aeabi_fdiv
	b	.LBB0_10
.section bb0_13
.LBB0_13:                               @ %if.end58
	ldr	r6, .LCPI0_5
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fcmple
	b	.LBB0_14
.LCPI0_5:
	.long	1199433728              @ 0x477de800
.section bb0_14
.LBB0_14:                               @ %if.end58
	mov	r7, r0
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fcmpun
	orrs	r0, r0, r7
	bne	.LBB0_16
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.then61
	mov	r1, #488
	orr	r1, r1, #64512
	b	.LBB0_20
.section bb0_16
.LBB0_16:                               @ %if.end63
	ldr	r6, .LCPI0_6
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fcmpge
	b	.LBB0_17
.LCPI0_6:
	.long	3346917376              @ 0xc77de800
.section bb0_17
.LBB0_17:                               @ %if.end63
	mov	r7, r0
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fcmpun
	orrs	r0, r0, r7
	bne	.LBB0_19
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then67
	ldr	r1, .LCPI0_7
	b	.LBB0_20
.LCPI0_7:
	.long	4294902296              @ 0xffff0218
.section bb0_19
.LBB0_19:                               @ %if.end69
	mov	r0, r5
	bl	__aeabi_f2iz
	mov	r1, r0
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.then61
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	b	scalbnf
.Ltmp0:
	.size	scalbf, .Ltmp0-scalbf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
