.section logbl_text
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
	.file	"src/math/logbl.bc"
	.globl	logbl
	.align	2
	.type	logbl,%function
.section bb0_0
logbl:                                  @ @logbl
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r5, r0
	mov	r0, #267386880
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r1
	orr	r0, r0, #1879048192
	and	r1, r4, r0
	cmp	r1, r0
	bhs	.LBB0_6
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %if.end
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then13
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then13
	bl	__aeabi_dmul
	mov	r3, r1
	mov	r1, #267386880
	mov	r2, r0
	mov	r0, #0
	orr	r1, r1, #-1342177280
	bl	__aeabi_ddiv
	b	.LBB0_8
.section bb0_6
.LBB0_6:                                @ %if.then
	mov	r0, r5
	mov	r1, r4
	mov	r2, r5
	mov	r3, r4
	bl	__aeabi_dmul
	b	.LBB0_8
.section bb0_7
.LBB0_7:                                @ %if.end15
	mov	r0, r5
	mov	r1, r4
	bl	ilogbl
	bl	__aeabi_i2d
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %return
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	logbl, .Ltmp0-logbl
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
