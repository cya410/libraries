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
	.file	"src/math/sinh.bc"
	.globl	sinh
	.align	2
	.type	sinh,%function
sinh:                                   @ @sinh
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r6, r1
	mov	r4, #266338304
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r5, r0
	mov	r0, #266338304
	orr	r0, r0, #-1342177280
	orr	r4, r4, #805306368
	b	.LBB0_4
.LBB0_4:                                @ %entry
	cmp	r6, #0
	bic	r7, r6, #-2147483648
	movlt	r4, r0
	ldr	r0, .LCPI0_2
	cmp	r7, r0
	bhi	.LBB0_14
	b	.LBB0_5
.LCPI0_2:
	.long	1082535489              @ 0x40862e41
.LBB0_5:                                @ %if.then6
	mov	r0, r5
	mov	r1, r7
	bl	expm1
	mov	r9, r0
	b	.LBB0_6
.LBB0_6:                                @ %if.then6
	ldr	r0, .LCPI0_3
	mov	r8, r1
	cmp	r7, r0
	bhi	.LBB0_17
	b	.LBB0_7
.LCPI0_3:
	.long	1072693247              @ 0x3fefffff
.LBB0_7:                                @ %if.then9
	mov	r0, #240123904
	orr	r0, r0, #805306368
	cmp	r7, r0
	blo	.LBB0_23
	b	.LBB0_8
.LBB0_8:                                @ %if.end13
	mov	r3, #267386880
	mov	r0, r9
	mov	r1, r8
	mov	r2, #0
	b	.LBB0_9
.LBB0_9:                                @ %if.end13
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_10
.LBB0_10:                               @ %if.end13
	mov	r0, r9
	mov	r1, r8
	mov	r2, r9
	mov	r3, r8
	b	.LBB0_11
.LBB0_11:                               @ %if.end13
	bl	__aeabi_dmul
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	b	.LBB0_12
.LBB0_12:                               @ %if.end13
	mov	r5, r0
	mov	r6, r1
	mov	r0, r9
	mov	r1, r8
	b	.LBB0_13
.LBB0_13:                               @ %if.end13
	mov	r2, r9
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dsub
	b	.LBB0_21
.LBB0_14:                               @ %if.end22
	mov	r0, #0
	mov	r1, r4
	mov	r2, #0
	mov	r3, r4
	b	.LBB0_15
.LBB0_15:                               @ %if.end22
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r6, r1
	mov	r0, r5
	b	.LBB0_16
.LBB0_16:                               @ %if.end22
	mov	r1, r7
	bl	__expo2
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r6
	b	.LBB0_22
.LBB0_17:                               @ %if.end17
	mov	r3, #267386880
	mov	r0, r9
	mov	r1, r8
	mov	r2, #0
	b	.LBB0_18
.LBB0_18:                               @ %if.end17
	orr	r3, r3, #805306368
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	b	.LBB0_19
.LBB0_19:                               @ %if.end17
	mov	r0, r9
	mov	r1, r8
	bl	__aeabi_ddiv
	mov	r2, r0
	b	.LBB0_20
.LBB0_20:                               @ %if.end17
	mov	r3, r1
	mov	r0, r9
	mov	r1, r8
	bl	__aeabi_dadd
	b	.LBB0_21
.LBB0_21:                               @ %return
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	mov	r1, r4
	b	.LBB0_22
.LBB0_22:                               @ %return
	bl	__aeabi_dmul
	mov	r5, r0
	mov	r6, r1
	b	.LBB0_23
.LBB0_23:                               @ %return
	mov	r0, r5
	mov	r1, r6
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	sinh, .Ltmp0-sinh
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
