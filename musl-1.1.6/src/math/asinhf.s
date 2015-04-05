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
	.file	"src/math/asinhf.bc"
	.globl	asinhf
	.align	2
	.type	asinhf,%function
asinhf:                                 @ @asinhf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	bic	r5, r4, #-2147483648
	lsr	r0, r5, #23
	cmp	r0, #139
	blo	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                @ %if.then
	mov	r0, r5
	bl	logf
	ldr	r1, .LCPI0_0
	bl	__aeabi_fadd
	mov	r5, r0
	b	.LBB0_16
.LCPI0_0:
	.long	1060205080              @ 0x3f317218
.LBB0_4:                                @ %if.else
	cmp	r5, #1073741824
	blo	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                @ %if.then6
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fadd
	mov	r6, r0
	b	.LBB0_6
.LBB0_6:                                @ %if.then6
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r1, #1065353216
	b	.LBB0_7
.LBB0_7:                                @ %if.then6
	bl	__aeabi_fadd
	bl	sqrtf
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_8
.LBB0_8:                                @ %if.then6
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fdiv
	b	.LBB0_9
.LBB0_9:                                @ %if.then6
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fadd
	bl	logf
	mov	r5, r0
	b	.LBB0_16
.LBB0_10:                               @ %if.else13
	cmp	r5, #964689920
	blo	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               @ %if.then15
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r6, r0
	b	.LBB0_12
.LBB0_12:                               @ %if.then15
	mov	r1, #1065353216
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fadd
	bl	sqrtf
	b	.LBB0_13
.LBB0_13:                               @ %if.then15
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_14
.LBB0_14:                               @ %if.then15
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd
	bl	log1pf
	mov	r5, r0
	b	.LBB0_16
.LBB0_15:                               @ %do.body
	mov	r1, #998244352
	mov	r0, r5
	orr	r1, r1, #1073741824
	bl	__aeabi_fadd
	str	r0, [sp, #4]
	b	.LBB0_16
.LBB0_16:                               @ %if.end27
	mov	r0, #-2147483648
	mov	r1, r5
	bl	__aeabi_fsub
	cmp	r4, #0
	movge	r0, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	asinhf, .Ltmp0-asinhf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
