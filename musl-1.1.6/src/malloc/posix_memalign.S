.section posix_memalign_text
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
	.file	"src/malloc/posix_memalign.bc"
	.globl	posix_memalign
	.align	2
	.type	posix_memalign,%function
.section bb0_0
posix_memalign:                         @ @posix_memalign
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	mov	r0, #22
	cmp	r1, #4
	blo	.LBB0_4
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.end
	mov	r0, r1
	mov	r1, r2
	bl	__memalign
	cmp	r0, #0
	beq	.LBB0_5
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end3
	str	r0, [r4]
	mov	r0, #0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %return
	pop	{r4, lr}
	mov	pc, lr
.section bb0_5
.LBB0_5:                                @ %if.then1
	bl	__errno_location
	ldr	r0, [r0]
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	posix_memalign, .Ltmp0-posix_memalign
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
