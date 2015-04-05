.section __cexpf_text
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
	.file	"src/complex/__cexpf.bc"
	.globl	__ldexp_cexpf
	.align	2
	.type	__ldexp_cexpf,%function
.section bb0_0
__ldexp_cexpf:                          @ @__ldexp_cexpf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r9, r2
	ldr	r2, .LCPI0_2
	b	.LBB0_3
.LCPI0_2:
	.long	3273843644              @ 0xc322e3bc
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r8, r0
	mov	r0, r1
	mov	r6, r3
	mov	r1, r2
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	bl	__aeabi_fadd
	bl	expf
	add	r1, r6, r0, lsr #23
	sub	r1, r1, #19
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	add	r2, r1, r1, lsr #31
	sub	r10, r1, r2, asr #1
	ldr	r1, .LCPI0_3
	asr	r5, r2, #1
	b	.LBB0_6
.LCPI0_3:
	.long	8388607                 @ 0x7fffff
.section bb0_6
.LBB0_6:                                @ %entry
	and	r0, r0, r1
	orr	r6, r0, #2130706432
	mov	r0, r9
	bl	cosf
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r4, #1065353216
	mov	r1, r0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %entry
	add	r7, r4, r5, lsl #23
	mov	r0, r7
	bl	__aeabi_fmul
	add	r4, r4, r10, lsl #23
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %entry
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r5, r0
	mov	r0, r9
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %entry
	bl	sinf
	mov	r1, r6
	str	r5, [r8]
	bl	__aeabi_fmul
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %entry
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	mov	r1, r4
	bl	__aeabi_fmul
	str	r0, [r8, #4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	__ldexp_cexpf, .Ltmp0-__ldexp_cexpf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
