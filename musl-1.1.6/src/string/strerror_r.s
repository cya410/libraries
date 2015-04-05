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
	.file	"src/string/strerror_r.bc"
	.globl	strerror_r
	.align	2
	.type	strerror_r,%function
strerror_r:                             @ @strerror_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r2
	mov	r4, r1
	bl	strerror
	mov	r6, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
                                        @ kill: R0<def> R6<kill>
	bl	strlen
	cmp	r0, r5
	bhs	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %if.end5
	add	r2, r0, #1
	mov	r0, r4
	mov	r1, r6
	bl	memcpy
	mov	r7, #0
	b	.LBB0_7
.LBB0_5:                                @ %if.then
	mov	r7, #34
	cmp	r5, #0
	beq	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                @ %if.then2
	sub	r5, r5, #1
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	bl	memcpy
	mov	r0, #0
	strb	r0, [r4, r5]
	b	.LBB0_7
.LBB0_7:                                @ %return
	mov	r0, r7
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strerror_r, .Ltmp0-strerror_r
	.cantunwind
	.fnend


	.weak	__xpg_strerror_r
__xpg_strerror_r = strerror_r
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
