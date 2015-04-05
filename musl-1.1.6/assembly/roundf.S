.section roundf_text
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
	.file	"src/math/roundf.bc"
	.globl	roundf
	.align	2
	.type	roundf,%function
.section bb0_0
roundf:                                 @ @roundf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	mov	r0, #255
	and	r6, r0, r4, lsr #23
	cmp	r6, #149
	bls	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:
	mov	r0, r4
	b	.LBB0_17
.section bb0_4
.LBB0_4:                                @ %if.end
	mov	r0, #-2147483648
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r5, r0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	cmp	r4, #0
	mov	r1, #1258291200
	movge	r5, r4
	mov	r0, r5
	bl	__aeabi_fadd
	cmp	r6, #125
	bhi	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %do.body
	str	r0, [sp, #4]
	mov	r0, r4
	mov	r1, #0
	bl	__aeabi_fmul
	b	.LBB0_17
.section bb0_7
.LBB0_7:                                @ %if.end8
	mov	r1, #-889192448
	bl	__aeabi_fadd
	mov	r1, r5
	bl	__aeabi_fsub
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end8
	mov	r6, r0
	mov	r1, #1056964608
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fcmple
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end8
	mov	r7, r0
	mov	r0, r6
	mov	r1, #1056964608
	bl	__aeabi_fcmpun
	orrs	r0, r0, r7
	bne	.LBB0_11
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.then13
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fadd
	mov	r1, #1065353216
	orr	r1, r1, #-2147483648
	b	.LBB0_15
.section bb0_11
.LBB0_11:                               @ %if.else
	mov	r0, r6
	mov	r1, #-1090519040
	bl	__aeabi_fcmpgt
	mov	r7, r0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.else
	mov	r0, r6
	mov	r1, #-1090519040
	bl	__aeabi_fcmpun
	orr	r7, r0, r7
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.else
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fadd
	mov	r5, r0
	cmp	r7, #0
	bne	.LBB0_16
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then17
	mov	r0, r5
	mov	r1, #1065353216
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end23
	bl	__aeabi_fadd
	mov	r5, r0
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.end23
	mov	r0, #-2147483648
	mov	r1, r5
	bl	__aeabi_fsub
	cmp	r4, #0
	movge	r0, r5
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	roundf, .Ltmp0-roundf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
