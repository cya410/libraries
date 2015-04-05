.section calloc_text
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
	.file	"src/malloc/calloc.bc"
	.globl	calloc
	.align	2
	.type	calloc,%function
.section bb0_0
calloc:                                 @ @calloc
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r5, r1
	mov	r6, r0
	cmp	r5, #0
	beq	.LBB0_4
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %land.lhs.true
	mvn	r0, #0
	mov	r1, r5
	bl	__aeabi_uidiv
	cmp	r0, r6
	bhs	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.then
	bl	__errno_location
	mov	r1, #12
	str	r1, [r0]
	mov	r1, #0
	b	.LBB0_10
.section bb0_4
.LBB0_4:                                @ %if.end
	mul	r4, r5, r6
	mov	r0, r4
	bl	malloc
	mov	r1, #0
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end4
	ldrb	r1, [r0, #-4]
	tst	r1, #7
	beq	.LBB0_9
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then6
	add	r2, r4, #3
	mov	r1, #0
	cmp	r1, r2, lsr #2
	beq	.LBB0_9
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.body.lr.ph
	lsr	r2, r2, #2
	mov	r3, #0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r0, r3, lsl #2]
	cmp	r6, #0
	strne	r1, [r0, r3, lsl #2]
	add	r3, r3, #1
	cmp	r2, r3
	bne	.LBB0_8
	b	.LBB0_9
.section bb0_9
.LBB0_9:
	mov	r1, r0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %return
	mov	r0, r1
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	calloc, .Ltmp0-calloc
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
