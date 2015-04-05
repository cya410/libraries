.section mtx_init_text
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
	.file	"src/thread/mtx_init.bc"
	.globl	mtx_init
	.align	2
	.type	mtx_init,%function
.section bb0_0
mtx_init:                               @ @mtx_init
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	mov	r0, sp
	mov	r1, #20
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r2, #0
	bl	__aeabi_memset
	and	r0, r4, #1
	str	r0, [sp, #20]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r0, [sp, #20]
	str	r0, [r5]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	ldr	r4, [sp, #16]
	str	r4, [r5, #20]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	str	r3, [r5, #16]
	str	r2, [r5, #12]
	str	r1, [r5, #8]
	str	r0, [r5, #4]
	mov	r0, #0
	add	sp, sp, #24
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	mtx_init, .Ltmp0-mtx_init
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
