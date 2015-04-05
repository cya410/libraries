.section tanhf_text
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
	.file	"src/math/tanhf.bc"
	.globl	tanhf
	.align	2
	.type	tanhf,%function
.section bb0_0
tanhf:                                  @ @tanhf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	ldr	r0, .LCPI0_3
	bic	r5, r4, #-2147483648
	cmp	r5, r0
	blo	.LBB0_5
	b	.LBB0_3
.LCPI0_3:
	.long	1057791829              @ 0x3f0c9f55
.section bb0_3
.LBB0_3:                                @ %if.then
	ldr	r0, .LCPI0_5
	cmp	r5, r0
	blo	.LBB0_8
	b	.LBB0_4
.LCPI0_5:
	.long	1092616193              @ 0x41200001
.section bb0_4
.LBB0_4:                                @ %if.then5
	mov	r0, #0
	mov	r1, r5
	bl	__aeabi_fdiv
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r5, r0
	b	.LBB0_17
.section bb0_5
.LBB0_5:                                @ %if.else8
	ldr	r0, .LCPI0_4
	cmp	r5, r0
	blo	.LBB0_11
	b	.LBB0_6
.LCPI0_4:
	.long	1048757625              @ 0x3e82c579
.section bb0_6
.LBB0_6:                                @ %if.then10
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fadd
	bl	expm1f
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then10
	mov	r5, r0
	mov	r1, #1073741824
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_15
.section bb0_8
.LBB0_8:                                @ %if.else
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fadd
	bl	expm1f
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.else
	mov	r1, #1073741824
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, #1073741824
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.else
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fsub
	mov	r5, r0
	b	.LBB0_17
.section bb0_11
.LBB0_11:                               @ %if.else15
	cmp	r5, #8388608
	blo	.LBB0_16
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.then17
	mov	r0, r5
	mov	r1, #-1073741824
	bl	__aeabi_fmul
	bl	expm1f
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then17
	mov	r5, r0
	mov	r0, #-2147483648
	mov	r1, r5
	bl	__aeabi_fsub
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then17
	mov	r6, r0
	mov	r0, r5
	mov	r1, #1073741824
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end27
	bl	__aeabi_fdiv
	mov	r5, r0
	b	.LBB0_17
.section bb0_16
.LBB0_16:                               @ %do.body
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fmul
	str	r0, [sp, #4]
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end27
	mov	r0, #-2147483648
	mov	r1, r5
	bl	__aeabi_fsub
	cmp	r4, #0
	movge	r0, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	tanhf, .Ltmp0-tanhf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
