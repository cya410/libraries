.section fgetspent_text
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
	.file	"src/passwd/fgetspent.bc"
	.globl	fgetspent
	.align	2
	.type	fgetspent,%function
.section bb0_0
fgetspent:                              @ @fgetspent
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
	mov	r6, r0
	mov	r4, #0
	mov	r1, sp
	mov	r0, #1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	str	r4, [sp, #4]
	bl	pthread_setcancelstate
	ldr	r5, .LCPI0_0
	add	r1, sp, #4
	b	.LBB0_4
.LCPI0_0:
	.long	_MergedGlobals
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r2, r6
	mov	r0, r5
	bl	getline
	cmp	r0, #0
	blt	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %land.lhs.true
	ldr	r0, [r5], #4
	mov	r1, r5
	bl	__parsespent
	cmp	r0, #0
	movlt	r5, #0
	mov	r4, r5
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	ldr	r0, [sp]
	mov	r1, #0
	bl	pthread_setcancelstate
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	fgetspent, .Ltmp0-fgetspent
	.cantunwind
	.fnend

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,40,16

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
