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
	.file	"src/stdlib/strtod.bc"
	.globl	strtof
	.align	2
	.type	strtof,%function
strtof:                                 @ @strtof
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r2, #0
	bl	strtox
	bl	__aeabi_d2f
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strtof, .Ltmp0-strtof
	.cantunwind
	.fnend

	.align	2
	.type	strtox,%function
strtox:                                 @ @strtox
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#136
	sub	sp, sp, #136
	mov	r7, sp
	mov	r6, r2
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	mov	r1, #136
	mov	r2, #0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r0, r7
	bl	__aeabi_memset
	mvn	r0, #0
	str	r5, [sp, #4]
	b	.LBB1_5
.LBB1_5:                                @ %entry
	mov	r2, #0
	mov	r3, #0
	str	r0, [sp, #8]
	str	r5, [sp, #44]
	b	.LBB1_6
.LBB1_6:                                @ %entry
	str	r0, [sp, #76]
	mov	r0, r7
	bl	__shlim
	mov	r0, r7
	b	.LBB1_7
.LBB1_7:                                @ %entry
	mov	r1, r6
	mov	r2, #1
	bl	__floatscan
	ldmib	sp, {r2, r3}
	b	.LBB1_8
.LBB1_8:                                @ %entry
	ldr	r7, [sp, #120]
	ldr	r6, [sp, #124]
	sub	r2, r2, r3
	asr	r3, r2, #31
	b	.LBB1_9
.LBB1_9:                                @ %entry
	adds	r2, r2, r7
	adc	r3, r3, r6
	cmp	r4, #0
	beq	.LBB1_11
	b	.LBB1_10
.LBB1_10:                               @ %if.then
	orrs	r3, r2, r3
	addne	r5, r5, r2
	str	r5, [r4]
	b	.LBB1_11
.LBB1_11:                               @ %if.end
	add	sp, sp, #136
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	strtox, .Ltmp1-strtox
	.cantunwind
	.fnend

	.globl	strtod
	.align	2
	.type	strtod,%function
strtod:                                 @ @strtod
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	mov	r2, #1
	b	strtox
.Ltmp2:
	.size	strtod, .Ltmp2-strtod
	.cantunwind
	.fnend

	.globl	strtold
	.align	2
	.type	strtold,%function
strtold:                                @ @strtold
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r2, #2
	b	strtox
.Ltmp3:
	.size	strtold, .Ltmp3-strtold
	.cantunwind
	.fnend


	.weak	strtof_l
strtof_l = strtof
	.weak	strtod_l
strtod_l = strtod
	.weak	strtold_l
strtold_l = strtold
	.weak	__strtof_l
__strtof_l = strtof
	.weak	__strtod_l
__strtod_l = strtod
	.weak	__strtold_l
__strtold_l = strtold
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
