.section strsep_text
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
	.file	"src/string/strsep.bc"
	.globl	strsep
	.align	2
	.type	strsep,%function
.section bb0_0
strsep:                                 @ @strsep
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r5, r0
	mov	r0, #0
	ldr	r4, [r5]
	cmp	r4, #0
	beq	.LBB0_4
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.end
	mov	r0, r4
	bl	strcspn
	ldrb	r2, [r4, r0]
	mov	r1, #0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	cmp	r2, #0
	movne	r1, #0
	movne	r2, r4
	strbne	r1, [r2, r0]!
	mov	r0, r4
	addne	r1, r2, #1
	str	r1, [r5]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %return
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strsep, .Ltmp0-strsep
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
