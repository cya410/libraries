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
	.file	"src/math/rint.bc"
	.globl	rint
	.align	2
	.type	rint,%function
rint:                                   @ @rint
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
	mov	r0, #267386880
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r1, #52428800
	orr	r0, r0, #1879048192
	orr	r1, r1, #1073741824
	and	r0, r4, r0
	cmp	r0, r1
	bls	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	r6, r4
	b	.LBB0_13
.LBB0_5:                                @ %if.end
	mov	r8, #53477376
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	b	.LBB0_6
.LBB0_6:                                @ %if.end
	orr	r8, r8, #-1073741824
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r6, #53477376
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	mov	r2, #0
	orr	r6, r6, #1073741824
	mov	r3, r6
	bl	__aeabi_dadd
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	mov	r7, r0
	mov	r9, r1
	mov	r0, r5
	mov	r1, r4
	b	.LBB0_9
.LBB0_9:                                @ %if.end
	mov	r2, #0
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r2, #0
	b	.LBB0_10
.LBB0_10:                               @ %if.end
	mov	r3, r8
	bl	__aeabi_dadd
	mov	r5, r0
	cmp	r4, #0
	b	.LBB0_11
.LBB0_11:                               @ %if.end
	mov	r6, r1
	mov	r2, #0
	mov	r3, #0
	movlt	r5, r7
	b	.LBB0_12
.LBB0_12:                               @ %if.end
	movlt	r6, r9
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	andne	r6, r4, #-2147483648
	movne	r5, #0
	b	.LBB0_13
.LBB0_13:                               @ %return
	mov	r0, r5
	mov	r1, r6
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	rint, .Ltmp0-rint
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
