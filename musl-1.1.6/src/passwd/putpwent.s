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
	.file	"src/passwd/putpwent.bc"
	.globl	putpwent
	.align	2
	.type	putpwent,%function
putpwent:                               @ @putpwent
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldm	r0, {r2, r3, r12, lr}
	ldr	r4, [r0, #16]
	ldr	r5, [r0, #20]
	ldr	r0, [r0, #24]
	b	.LBB0_3
.LBB0_3:                                @ %entry
	stm	sp, {r12, lr}
	ldr	r12, .LCPI0_0
	str	r4, [sp, #8]
	str	r5, [sp, #12]
	b	.LBB0_4
.LCPI0_0:
	.long	.L.str
.LBB0_4:                                @ %entry
	str	r0, [sp, #16]
	mov	r0, r1
	mov	r1, r12
	bl	fprintf
	asr	r0, r0, #31
	add	sp, sp, #24
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	putpwent, .Ltmp0-putpwent
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%s:%s:%d:%d:%s:%s:%s\n"
	.size	.L.str, 22


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
