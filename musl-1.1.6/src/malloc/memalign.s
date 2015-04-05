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
	.file	"src/malloc/memalign.bc"
	.globl	__memalign
	.align	2
	.type	__memalign,%function
__memalign:                             @ @__memalign
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	rsb	r5, r0, #0
	and	r2, r0, r5
	cmp	r2, r0
	bne	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                @ %if.end
	mvn	r2, r0
	cmp	r1, r2
	bls	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                @ %if.then3
	bl	__errno_location
	mov	r1, #12
	b	.LBB0_5
.LBB0_4:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	b	.LBB0_5
.LBB0_5:                                @ %return
	str	r1, [r0]
	mov	r4, #0
	b	.LBB0_6
.LBB0_6:                                @ %return
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.LBB0_7:                                @ %if.end5
	cmp	r0, #16
	bhi	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                @ %if.then7
	mov	r0, r1
	pop	{r4, r5, r6, lr}
	b	malloc
.LBB0_9:                                @ %if.end11
	sub	r6, r0, #1
	add	r0, r6, r1
	bl	malloc
	mov	r4, #0
	cmp	r0, #0
	beq	.LBB0_6
	b	.LBB0_10
.LBB0_10:                               @ %if.end16
	add	r1, r6, r0
	and	r4, r1, r5
	cmp	r4, r0
	beq	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               @ %if.end23
	ldr	r2, [r0, #-4]
	ands	r1, r2, #7
	beq	.LBB0_16
	b	.LBB0_12
.LBB0_12:                               @ %if.end36
	bic	r2, r2, #7
	sub	r6, r4, r0
	add	r2, r0, r2
	orr	r5, r1, r6
	b	.LBB0_13
.LBB0_13:                               @ %if.end36
	ldr	r3, [r2, #-8]
	str	r5, [r0, #-4]
	sub	r5, r2, r4
	orr	r1, r5, r1
	b	.LBB0_14
.LBB0_14:                               @ %if.end36
	and	r3, r3, #7
	orr	r6, r3, r6
	str	r6, [r4, #-8]
	str	r1, [r4, #-4]
	orr	r1, r3, r5
	str	r1, [r2, #-8]
	bl	free
	b	.LBB0_6
.LBB0_15:
	mov	r4, r0
	b	.LBB0_6
.LBB0_16:                               @ %if.then26
	ldr	r2, [r0, #-8]
	sub	r1, r4, r0
	add	r2, r2, r1
	str	r2, [r4, #-8]
	ldr	r0, [r0, #-4]
	sub	r0, r0, r1
	str	r0, [r4, #-4]
	b	.LBB0_6
.Ltmp0:
	.size	__memalign, .Ltmp0-__memalign
	.cantunwind
	.fnend


	.weak	memalign
memalign = __memalign
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
