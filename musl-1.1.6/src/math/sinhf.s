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
	.file	"src/math/sinhf.bc"
	.globl	sinhf
	.align	2
	.type	sinhf,%function
sinhf:                                  @ @sinhf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r6, r0
	ldr	r0, .LCPI0_0
	mov	r4, #1056964608
	cmp	r6, #0
	b	.LBB0_3
.LCPI0_0:
	.long	1118925334              @ 0x42b17216
.LBB0_3:                                @ %entry
	bic	r7, r6, #-2147483648
	movlt	r4, #-1090519040
	cmp	r7, r0
	bhi	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                @ %if.then4
	mov	r0, r7
	bl	expm1f
	mov	r5, r0
	lsr	r0, r7, #23
	cmp	r0, #126
	bhi	.LBB0_11
	b	.LBB0_5
.LBB0_5:                                @ %if.then6
	cmp	r7, #964689920
	blo	.LBB0_14
	b	.LBB0_6
.LBB0_6:                                @ %if.end9
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fadd
	mov	r6, r0
	b	.LBB0_7
.LBB0_7:                                @ %if.end9
	mov	r0, r5
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r7, r0
	b	.LBB0_8
.LBB0_8:                                @ %if.end9
	mov	r0, r5
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_9
.LBB0_9:                                @ %if.end9
	mov	r0, r7
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fsub
	b	.LBB0_13
.LBB0_10:                               @ %if.end18
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fadd
	mov	r4, r0
	mov	r0, r7
	bl	__expo2f
	b	.LBB0_13
.LBB0_11:                               @ %if.end13
	mov	r0, r5
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_12
.LBB0_12:                               @ %if.end13
	mov	r0, r5
	bl	__aeabi_fdiv
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd
	b	.LBB0_13
.LBB0_13:                               @ %return
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r6, r0
	b	.LBB0_14
.LBB0_14:                               @ %return
	mov	r0, r6
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	sinhf, .Ltmp0-sinhf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
