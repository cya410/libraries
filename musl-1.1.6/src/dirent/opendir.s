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
	.file	"src/dirent/opendir.bc"
	.globl	opendir
	.align	2
	.type	opendir,%function
opendir:                                @ @opendir
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r1, #540672
	bl	open
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r0
	mov	r4, #0
	cmp	r5, #0
	blt	.LBB0_6
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	mov	r0, #1
	mov	r1, #2080
	bl	calloc
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %if.end4
	mov	r4, r0
	str	r5, [r0]
	b	.LBB0_6
.LBB0_5:                                @ %if.then2
	mov	r7, #6
	mov	r0, r5
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_6
.LBB0_6:                                @ %return
	mov	r0, r4
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	opendir, .Ltmp0-opendir
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
