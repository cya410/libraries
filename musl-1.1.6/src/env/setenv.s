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
	.file	"src/env/setenv.bc"
	.globl	setenv
	.align	2
	.type	setenv,%function
setenv:                                 @ @setenv
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r0
	mov	r6, r2
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	cmp	r5, #0
	ldrbne	r0, [r5]
	cmpne	r0, #0
	beq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                @ %lor.lhs.false2
	mov	r0, r5
	mov	r1, #61
	bl	strchr
	cmp	r0, #0
	beq	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	b	.LBB0_16
.LBB0_6:                                @ %if.end
	cmp	r6, #0
	bne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %land.lhs.true
	mov	r0, r5
	bl	getenv
	mov	r7, #0
	cmp	r0, #0
	bne	.LBB0_17
	b	.LBB0_8
.LBB0_8:                                @ %if.end9
	mov	r0, r5
	bl	strlen
	mov	r7, r0
	mov	r0, r4
	b	.LBB0_9
.LBB0_9:                                @ %if.end9
	bl	strlen
	mov	r8, r0
	add	r9, r8, r7
	add	r0, r9, #2
	b	.LBB0_10
.LBB0_10:                               @ %if.end9
	bl	malloc
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               @ %if.then15
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	memcpy
	b	.LBB0_12
.LBB0_12:                               @ %if.then15
	mov	r0, #61
	mov	r1, r6
	mov	r2, r8
	strb	r0, [r1, r7]!
	b	.LBB0_13
.LBB0_13:                               @ %if.then15
	add	r0, r1, #1
	mov	r1, r4
	bl	memcpy
	add	r0, r9, r6
	b	.LBB0_14
.LBB0_14:                               @ %if.then15
	mov	r7, #0
	mov	r1, #1
	strb	r7, [r0, #1]
	mov	r0, r6
	bl	__putenv
	cmp	r0, #0
	beq	.LBB0_17
	b	.LBB0_15
.LBB0_15:                               @ %if.end26
	mov	r0, r6
	bl	free
	b	.LBB0_16
.LBB0_16:                               @ %return
	mvn	r7, #0
	b	.LBB0_17
.LBB0_17:                               @ %return
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	setenv, .Ltmp0-setenv
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
