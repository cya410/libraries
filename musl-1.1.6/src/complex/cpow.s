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
	.file	"src/complex/cpow.bc"
	.globl	cpow
	.align	2
	.type	cpow,%function
cpow:                                   @ @cpow
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#100
	sub	sp, sp, #100
	b	.LBB0_3
.LBB0_3:                                @ %entry
	str	r0, [sp, #44]           @ 4-byte Spill
	ldr	r0, [sp, #136]
	ldr	r1, [sp, #140]
	b	.LBB0_4
.LBB0_4:                                @ %entry
	stm	sp, {r0, r1}
	add	r0, sp, #80
	bl	clog
	ldr	r9, [sp, #92]
	b	.LBB0_5
.LBB0_5:                                @ %entry
	ldr	r10, [sp, #88]
	ldr	r4, [sp, #80]
	ldr	r7, [sp, #84]
	ldr	r0, [sp, #144]
	b	.LBB0_6
.LBB0_6:                                @ %entry
	ldr	r1, [sp, #148]
	mov	r2, r10
	mov	r3, r9
	str	r4, [sp, #32]           @ 4-byte Spill
	b	.LBB0_7
.LBB0_7:                                @ %entry
	str	r7, [sp, #28]           @ 4-byte Spill
	str	r9, [sp, #24]           @ 4-byte Spill
	bl	__aeabi_dmul
	ldr	r8, [sp, #152]
	b	.LBB0_8
.LBB0_8:                                @ %entry
	ldr	r11, [sp, #156]
	mov	r5, r0
	mov	r6, r1
	mov	r2, r4
	b	.LBB0_9
.LBB0_9:                                @ %entry
	mov	r3, r7
	mov	r0, r8
	mov	r1, r11
	bl	__aeabi_dmul
	b	.LBB0_10
.LBB0_10:                               @ %entry
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB0_11
.LBB0_11:                               @ %entry
	str	r1, [sp, #40]           @ 4-byte Spill
	ldr	r0, [sp, #144]
	ldr	r1, [sp, #148]
	mov	r2, r4
	b	.LBB0_12
.LBB0_12:                               @ %entry
	mov	r3, r7
	mov	r4, r9
	mov	r7, r8
	mov	r9, r11
	b	.LBB0_13
.LBB0_13:                               @ %entry
	bl	__aeabi_dmul
	mov	r5, r0
	mov	r6, r1
	mov	r0, r7
	b	.LBB0_14
.LBB0_14:                               @ %entry
	mov	r1, r9
	mov	r2, r10
	mov	r3, r4
	bl	__aeabi_dmul
	b	.LBB0_15
.LBB0_15:                               @ %entry
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	b	.LBB0_16
.LBB0_16:                               @ %entry
	bl	__aeabi_dsub
	mov	r11, r0
	mov	r5, r1
	mov	r2, r11
	b	.LBB0_17
.LBB0_17:                               @ %entry
	mov	r3, r5
                                        @ kill: R0<def> R11<kill>
                                        @ kill: R1<def> R5<kill>
	bl	__aeabi_dcmpun
	cmp	r0, #0
	beq	.LBB0_24
	b	.LBB0_18
.LBB0_18:                               @ %entry
	ldr	r4, [sp, #36]           @ 4-byte Reload
	ldr	r6, [sp, #40]           @ 4-byte Reload
	mov	r0, r4
	mov	r1, r6
	b	.LBB0_19
.LBB0_19:                               @ %entry
	mov	r2, r4
	mov	r3, r6
	bl	__aeabi_dcmpun
	cmp	r0, #0
	mov	r8, r4
	mov	r0, r6
	beq	.LBB0_25
	b	.LBB0_20
.LBB0_20:                               @ %complex_mul_libcall
	stm	sp, {r7, r9}
	ldr	r2, [sp, #144]
	ldr	r3, [sp, #148]
	ldr	r0, [sp, #32]           @ 4-byte Reload
	b	.LBB0_21
.LBB0_21:                               @ %complex_mul_libcall
	str	r0, [sp, #8]
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #12]
	ldr	r0, [sp, #24]           @ 4-byte Reload
	b	.LBB0_22
.LBB0_22:                               @ %complex_mul_libcall
	str	r10, [sp, #16]
	str	r0, [sp, #20]
	add	r0, sp, #64
	bl	__muldc3
	b	.LBB0_23
.LBB0_23:                               @ %complex_mul_libcall
	ldr	r11, [sp, #64]
	ldr	r5, [sp, #68]
	ldr	r8, [sp, #72]
	ldr	r0, [sp, #76]
	b	.LBB0_25
.LBB0_24:
	ldr	r8, [sp, #36]           @ 4-byte Reload
	ldr	r0, [sp, #40]           @ 4-byte Reload
	b	.LBB0_25
.LBB0_25:                               @ %complex_mul_cont
	str	r8, [sp]
	str	r0, [sp, #4]
	add	r0, sp, #48
	mov	r2, r11
	b	.LBB0_26
.LBB0_26:                               @ %complex_mul_cont
	mov	r3, r5
	bl	cexp
	add	r3, sp, #48
	ldm	r3, {r0, r1, r2, r3}
	b	.LBB0_27
.LBB0_27:                               @ %complex_mul_cont
	ldr	r7, [sp, #44]           @ 4-byte Reload
	stm	r7, {r0, r1, r2, r3}
	add	sp, sp, #100
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	cpow, .Ltmp0-cpow
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
