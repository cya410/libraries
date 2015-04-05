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
	.file	"src/misc/get_current_dir_name.bc"
	.globl	get_current_dir_name
	.align	2
	.type	get_current_dir_name,%function
get_current_dir_name:                   @ @get_current_dir_name
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#208
	sub	sp, sp, #208
	ldr	r0, .LCPI0_2
	bl	getenv
	b	.LBB0_2
.LCPI0_2:
	.long	.L.str
.LBB0_2:                                @ %entry
	mov	r4, r0
	cmp	r4, #0
	ldrbne	r0, [r4]
	cmpne	r0, #0
	beq	.LBB0_9
	b	.LBB0_3
.LBB0_3:                                @ %land.lhs.true2
	add	r1, sp, #104
	mov	r0, r4
	bl	stat
	cmp	r0, #0
	bne	.LBB0_9
	b	.LBB0_4
.LBB0_4:                                @ %land.lhs.true5
	ldr	r0, .LCPI0_3
	mov	r1, sp
	bl	stat
	cmp	r0, #0
	bne	.LBB0_9
	b	.LBB0_5
.LCPI0_3:
	.long	.L.str1
.LBB0_5:                                @ %land.lhs.true8
	ldm	sp, {r0, r1}
	ldr	r2, [sp, #104]
	ldr	r3, [sp, #108]
	eor	r1, r3, r1
	eor	r0, r2, r0
	orrs	r0, r0, r1
	bne	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                @ %land.lhs.true11
	ldr	r0, [sp, #96]
	ldr	r2, [sp, #200]
	ldr	r1, [sp, #100]
	ldr	r3, [sp, #204]
	b	.LBB0_7
.LBB0_7:                                @ %land.lhs.true11
	eor	r1, r3, r1
	eor	r0, r2, r0
	orrs	r0, r0, r1
	bne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %if.then
	mov	r0, r4
	bl	strdup
	b	.LBB0_10
.LBB0_9:                                @ %if.end
	mov	r0, #0
	mov	r1, #0
	bl	getcwd
	b	.LBB0_10
.LBB0_10:                               @ %cleanup
	add	sp, sp, #208
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	get_current_dir_name, .Ltmp0-get_current_dir_name
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"PWD"
	.size	.L.str, 4

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"."
	.size	.L.str1, 2


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
