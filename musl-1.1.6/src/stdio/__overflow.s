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
	.file	"src/stdio/__overflow.bc"
	.protected	__overflow
	.globl	__overflow
	.align	2
	.type	__overflow,%function
__overflow:                             @ @__overflow
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r1
	mov	r4, r0
	strb	r5, [sp, #7]
	ldr	r0, [r4, #16]
	cmp	r0, #0
	bne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                @ %land.lhs.true
	mov	r0, r4
	bl	__towrite
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                @ %land.lhs.true.if.end_crit_edge
	ldr	r0, [r4, #16]
	b	.LBB0_5
.LBB0_5:                                @ %if.end
	ldr	r1, [r4, #20]
	cmp	r1, r0
	bhs	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                @ %land.lhs.true4
	ldrsb	r2, [r4, #75]
	and	r0, r5, #255
	cmp	r0, r2
	bne	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                @ %if.end12
	ldr	r3, [r4, #36]
	add	r1, sp, #7
	mov	r0, r4
	mov	r2, #1
	b	.LBB0_8
.LBB0_8:                                @ %if.end12
	mov	lr, pc
	mov	pc, r3
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #1
	ldrbeq	r0, [sp, #7]
	b	.LBB0_10
.LBB0_9:                                @ %if.then9
	add	r2, r1, #1
	str	r2, [r4, #20]
	strb	r5, [r1]
	b	.LBB0_10
.LBB0_10:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__overflow, .Ltmp0-__overflow
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
