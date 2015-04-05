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
	.file	"src/complex/casin.bc"
	.globl	casin
	.align	2
	.type	casin,%function
casin:                                  @ @casin
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#52
	sub	sp, sp, #52
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r3
	mov	r6, r2
	mov	r9, r0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r2, #0
	mov	r3, #-1073741824
	mov	r0, r6
	mov	r1, r5
	b	.LBB0_5
.LBB0_5:                                @ %entry
	bl	__aeabi_dmul
	ldr	r10, [sp, #88]
	ldr	r11, [sp, #92]
	mov	r2, r0
	b	.LBB0_6
.LBB0_6:                                @ %entry
	mov	r3, r1
	mov	r0, r10
	mov	r1, r11
	bl	__aeabi_dmul
	b	.LBB0_7
.LBB0_7:                                @ %entry
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r4, r1
	mov	r0, r6
	mov	r1, r5
	b	.LBB0_8
.LBB0_8:                                @ %entry
	mov	r2, r10
	mov	r3, r11
	bl	__aeabi_dsub
	mov	r7, r0
	b	.LBB0_9
.LBB0_9:                                @ %entry
	mov	r8, r1
	mov	r0, r6
	mov	r1, r5
	mov	r2, r10
	b	.LBB0_10
.LBB0_10:                               @ %entry
	mov	r3, r11
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_11
.LBB0_11:                               @ %entry
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dmul
	mov	r3, r1
	b	.LBB0_12
.LBB0_12:                               @ %entry
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	orr	r1, r1, #805306368
	b	.LBB0_13
.LBB0_13:                               @ %entry
	bl	__aeabi_dsub
	mov	r2, r0
	ldr	r0, [sp, #12]           @ 4-byte Reload
	mov	r3, r1
	b	.LBB0_14
.LBB0_14:                               @ %entry
	stm	sp, {r0, r4}
	add	r0, sp, #32
	bl	csqrt
	ldr	r2, [sp, #40]
	b	.LBB0_15
.LBB0_15:                               @ %entry
	ldr	r3, [sp, #44]
	ldr	r7, [sp, #32]
	ldr	r4, [sp, #36]
	mov	r0, r6
	b	.LBB0_16
.LBB0_16:                               @ %entry
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_17
.LBB0_17:                               @ %entry
	mov	r0, r7
	mov	r1, r4
	mov	r2, r10
	mov	r3, r11
	b	.LBB0_18
.LBB0_18:                               @ %entry
	bl	__aeabi_dsub
	mov	r2, r0
	add	r0, sp, #16
	mov	r3, r1
	b	.LBB0_19
.LBB0_19:                               @ %entry
	stm	sp, {r5, r6}
	bl	clog
	add	r3, sp, #16
	ldm	r3, {r0, r1, r2, r3}
	stm	r9, {r0, r1, r2, r3}
	add	sp, sp, #52
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	casin, .Ltmp0-casin
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
