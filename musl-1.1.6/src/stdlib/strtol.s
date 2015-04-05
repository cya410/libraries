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
	.file	"src/stdlib/strtol.bc"
	.globl	strtoull
	.align	2
	.type	strtoull,%function
strtoull:                               @ @strtoull
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mvn	r3, #0
	str	r3, [sp]
	b	.LBB0_2
.LBB0_2:                                @ %entry
	str	r3, [sp, #4]
	bl	strtox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	strtoull, .Ltmp0-strtoull
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
	.pad	#144
	sub	sp, sp, #144
	mov	r5, r0
	mov	r0, #0
	b	.LBB1_3
.LBB1_3:                                @ %entry
	add	r7, sp, #8
	mov	r6, r2
	mov	r2, #0
	mov	r3, #0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r4, r1
	str	r0, [sp, #8]
	sub	r0, r5, #-2147483647
	cmp	r5, #0
	b	.LBB1_5
.LBB1_5:                                @ %entry
	str	r5, [sp, #12]
	str	r5, [sp, #52]
	mvnlt	r0, #0
	str	r0, [sp, #16]
	b	.LBB1_6
.LBB1_6:                                @ %entry
	mvn	r0, #0
	str	r0, [sp, #84]
	mov	r0, r7
	bl	__shlim
	b	.LBB1_7
.LBB1_7:                                @ %entry
	ldr	r0, [sp, #172]
	mov	r1, r6
	mov	r2, #1
	str	r0, [sp, #4]
	b	.LBB1_8
.LBB1_8:                                @ %entry
	ldr	r0, [sp, #168]
	str	r0, [sp]
	mov	r0, r7
	bl	__intscan
	cmp	r4, #0
	beq	.LBB1_10
	b	.LBB1_9
.LBB1_9:                                @ %if.then2
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #16]
	ldr	r7, [sp, #128]
	sub	r2, r2, r3
	add	r2, r2, r7
	add	r2, r5, r2
	str	r2, [r4]
	b	.LBB1_10
.LBB1_10:                               @ %if.end7
	add	sp, sp, #144
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	strtox, .Ltmp1-strtox
	.cantunwind
	.fnend

	.globl	strtoll
	.align	2
	.type	strtoll,%function
strtoll:                                @ @strtoll
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #-2147483648
	mov	r3, #0
	b	.LBB2_2
.LBB2_2:                                @ %entry
	stm	sp, {r3, r12}
	bl	strtox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	strtoll, .Ltmp2-strtoll
	.cantunwind
	.fnend

	.globl	strtoul
	.align	2
	.type	strtoul,%function
strtoul:                                @ @strtoul
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB3_1
.LBB3_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #0
	mvn	r3, #0
	b	.LBB3_2
.LBB3_2:                                @ %entry
	stm	sp, {r3, r12}
	bl	strtox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	strtoul, .Ltmp3-strtoul
	.cantunwind
	.fnend

	.globl	strtol
	.align	2
	.type	strtol,%function
strtol:                                 @ @strtol
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB4_1
.LBB4_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #0
	mov	r3, #-2147483648
	b	.LBB4_2
.LBB4_2:                                @ %entry
	stm	sp, {r3, r12}
	bl	strtox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	strtol, .Ltmp4-strtol
	.cantunwind
	.fnend

	.globl	strtoimax
	.align	2
	.type	strtoimax,%function
strtoimax:                              @ @strtoimax
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB5_1
.LBB5_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #-2147483648
	mov	r3, #0
	b	.LBB5_2
.LBB5_2:                                @ %entry
	stm	sp, {r3, r12}
	bl	strtox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp5:
	.size	strtoimax, .Ltmp5-strtoimax
	.cantunwind
	.fnend

	.globl	strtoumax
	.align	2
	.type	strtoumax,%function
strtoumax:                              @ @strtoumax
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB6_1
.LBB6_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mvn	r3, #0
	str	r3, [sp]
	b	.LBB6_2
.LBB6_2:                                @ %entry
	str	r3, [sp, #4]
	bl	strtox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp6:
	.size	strtoumax, .Ltmp6-strtoumax
	.cantunwind
	.fnend


	.weak	__strtol_internal
__strtol_internal = strtol
	.weak	__strtoul_internal
__strtoul_internal = strtoul
	.weak	__strtoll_internal
__strtoll_internal = strtoll
	.weak	__strtoull_internal
__strtoull_internal = strtoull
	.weak	__strtoimax_internal
__strtoimax_internal = strtoimax
	.weak	__strtoumax_internal
__strtoumax_internal = strtoumax
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
