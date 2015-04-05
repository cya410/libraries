.section readdir_r_text
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
	.file	"src/dirent/readdir_r.bc"
	.globl	readdir_r
	.align	2
	.type	readdir_r,%function
.section bb0_0
readdir_r:                              @ @readdir_r
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
	mov	r8, r2
	mov	r9, r1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	bl	__errno_location
	mov	r7, r0
	add	r6, r4, #24
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r10, [r7]
	mov	r0, r6
	bl	__lock
	mov	r5, #0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r0, r4
	str	r5, [r7]
	bl	readdir
	ldr	r4, [r7]
	mov	r1, r0
	cmp	r4, #0
	beq	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then
	mov	r0, r6
	bl	__unlock
	b	.LBB0_10
.section bb0_7
.LBB0_7:                                @ %if.end
	str	r10, [r7]
	cmp	r1, #0
	beq	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then8
	ldrh	r2, [r1, #16]
	mov	r0, r9
	bl	memcpy
	mov	r5, r9
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end10
	mov	r0, r6
	bl	__unlock
	mov	r4, #0
	str	r5, [r8]
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %return
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	readdir_r, .Ltmp0-readdir_r
	.cantunwind
	.fnend

	.hidden	__lock
	.hidden	__unlock

	.weak	readdir64_r
readdir64_r = readdir_r
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
