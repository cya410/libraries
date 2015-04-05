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
	.file	"src/unistd/getlogin_r.bc"
	.globl	getlogin_r
	.align	2
	.type	getlogin_r,%function
getlogin_r:                             @ @getlogin_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r6, r1
	mov	r4, r0
	b	.LBB0_2
.LBB0_2:                                @ %entry
	bl	getlogin
	mov	r5, r0
	mov	r0, #6
	cmp	r5, #0
	beq	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	mov	r0, r5
	bl	strlen
	mov	r1, r0
	mov	r0, #34
	cmp	r1, r6
	bhs	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %if.end3
	mov	r0, r4
	mov	r1, r5
	bl	strcpy
	mov	r0, #0
	b	.LBB0_5
.LBB0_5:                                @ %return
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	getlogin_r, .Ltmp0-getlogin_r
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
