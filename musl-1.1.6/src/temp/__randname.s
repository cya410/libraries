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
	.file	"src/temp/__randname.bc"
	.globl	__randname
	.align	2
	.type	__randname,%function
__randname:                             @ @__randname
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
	mov	r5, sp
	mov	r4, r0
	mov	r0, #0
	mov	r6, #0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r1, r5
	bl	__clock_gettime
	ldr	r1, [sp, #4]
	add	r0, r4, r5, lsr #4
	add	r1, r1, r1, lsl #16
	eor	r0, r1, r0
	mov	r1, #32
	b	.LBB0_4
.LBB0_4:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	and	r3, r0, #15
	and	r2, r1, r0, lsl #1
	lsr	r0, r0, #5
	add	r3, r3, #65
	b	.LBB0_5
.LBB0_5:                                @ %for.body
                                        @   in Loop: Header=BB0_4 Depth=1
	orr	r2, r3, r2
	strb	r2, [r4, -r6]
	sub	r6, r6, #1
	cmn	r6, #6
	bne	.LBB0_4
	b	.LBB0_6
.LBB0_6:                                @ %for.end
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	__randname, .Ltmp0-__randname
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
