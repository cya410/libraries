.section gmtime_r_text
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
	.file	"src/time/gmtime_r.bc"
	.globl	__gmtime_r
	.align	2
	.type	__gmtime_r,%function
.section bb0_0
__gmtime_r:                             @ @__gmtime_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	ldr	r0, [r0]
	mov	r4, r1
	mov	r2, r4
	asr	r1, r0, #31
	bl	__secs_to_tm
	cmp	r0, #0
	blt	.LBB0_3
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.end
	mov	r0, #0
	str	r0, [r4, #32]
	str	r0, [r4, #36]
	ldr	r0, .LCPI0_0
	str	r0, [r4, #40]
	b	.LBB0_4
.LCPI0_0:
	.long	__gmt
.section bb0_3
.LBB0_3:                                @ %if.then
	bl	__errno_location
	mov	r1, #75
	mov	r4, #0
	str	r1, [r0]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %return
	mov	r0, r4
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	__gmtime_r, .Ltmp0-__gmtime_r
	.cantunwind
	.fnend


	.weak	gmtime_r
gmtime_r = __gmtime_r
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
