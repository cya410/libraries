.section wcschr_text
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
	.file	"src/string/wcschr.bc"
	.globl	wcschr
	.align	2
	.type	wcschr,%function
.section bb0_0
wcschr:                                 @ @wcschr
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	mov	r4, r0
	cmp	r1, #0
	beq	.LBB0_4
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %for.cond.preheader
	sub	r0, r4, #4
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r0, #4]!
	cmp	r2, #0
	cmpne	r2, r1
	bne	.LBB0_2
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %for.end
	cmp	r2, #0
	moveq	r0, r2
	pop	{r4, lr}
	mov	pc, lr
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r0, r4
	bl	wcslen
	add	r0, r4, r0, lsl #2
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	wcschr, .Ltmp0-wcschr
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
