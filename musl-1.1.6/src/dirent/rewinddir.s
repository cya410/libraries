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
	.file	"src/dirent/rewinddir.bc"
	.globl	rewinddir
	.align	2
	.type	rewinddir,%function
rewinddir:                              @ @rewinddir
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
	add	r5, r4, #24
	mov	r0, r5
	bl	__lock
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r0, [r4]
	mov	r6, #0
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	str	r6, [sp]
	bl	lseek
	str	r6, [r4, #8]
	str	r6, [r4, #12]
	b	.LBB0_5
.LBB0_5:                                @ %entry
	str	r6, [r4, #16]
	str	r6, [r4, #20]
	mov	r0, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	b	__unlock
.Ltmp0:
	.size	rewinddir, .Ltmp0-rewinddir
	.cantunwind
	.fnend

	.hidden	__lock
	.hidden	__unlock

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
