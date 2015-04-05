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
	.file	"src/math/fmaf.bc"
	.globl	fmaf
	.align	2
	.type	fmaf,%function
fmaf:                                   @ @fmaf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r2
	mov	r4, r1
	bl	__aeabi_f2d
	mov	r6, r0
	b	.LBB0_4
.LBB0_4:                                @ %entry
	mov	r0, r4
	mov	r7, r1
	bl	__aeabi_f2d
	mov	r2, r0
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	b	.LBB0_6
.LBB0_6:                                @ %entry
	mov	r4, r0
	mov	r0, r5
	mov	r6, r1
	bl	__aeabi_f2d
	b	.LBB0_7
.LBB0_7:                                @ %entry
	mov	r9, r0
	mov	r7, r1
	mov	r0, r4
	mov	r1, r6
	b	.LBB0_8
.LBB0_8:                                @ %entry
	mov	r2, r9
	mov	r3, r7
	bl	__aeabi_dadd
	mov	r5, r0
	b	.LBB0_9
.LBB0_9:                                @ %entry
	mov	r8, r1
	mov	r2, r4
	mov	r3, r6
                                        @ kill: R0<def> R5<kill>
	b	.LBB0_10
.LBB0_10:                               @ %entry
                                        @ kill: R1<def> R8<kill>
	bl	__aeabi_dsub
	mov	r2, r9
	mov	r3, r7
	b	.LBB0_11
.LBB0_11:                               @ %entry
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	biceq	r0, r5, #-536870912
	teqeq	r0, #268435456
	bne	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               @ %entry
	mov	r0, #267386880
	orr	r0, r0, #1879048192
	and	r1, r8, r0
	teq	r1, r0
	beq	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               @ %lor.lhs.false13
	bl	fegetround
	cmp	r0, #0
	beq	.LBB0_16
	b	.LBB0_14
.LBB0_14:
	mov	r4, r5
	mov	r6, r8
	b	.LBB0_15
.LBB0_15:                               @ %return
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_d2f
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.LBB0_16:                               @ %if.end
	str	r4, [sp]
	str	r6, [sp, #4]
	mov	r0, #0
	ldr	r4, [sp]
	b	.LBB0_17
.LBB0_17:                               @ %if.end
	ldr	r6, [sp, #4]
	bl	fesetround
	mov	r0, r9
	mov	r1, r7
	b	.LBB0_18
.LBB0_18:                               @ %if.end
	mov	r2, r4
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r4, r0
	b	.LBB0_19
.LBB0_19:                               @ %if.end
	mov	r6, r1
	mov	r0, r5
	mov	r1, r8
	mov	r2, r4
	b	.LBB0_20
.LBB0_20:                               @ %if.end
	mov	r3, r6
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_15
	b	.LBB0_21
.LBB0_21:                               @ %if.then22
	adds	r4, r5, #1
	adc	r6, r8, #0
	b	.LBB0_15
.Ltmp0:
	.size	fmaf, .Ltmp0-fmaf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
