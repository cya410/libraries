.section cproj_text
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
	.file	"src/complex/cproj.bc"
	.globl	cproj
	.align	2
	.type	cproj,%function
.section bb0_0
cproj:                                  @ @cproj
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
	mov	r5, #267386880
	mov	r6, r0
	bic	r0, r3, #-2147483648
	orr	r5, r5, #1879048192
	eor	r0, r0, r5
	orrs	r0, r2, r0
	beq	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %cond.true24
	ldr	r1, [sp, #28]
	ldr	r0, [sp, #24]
	bic	r7, r1, #-2147483648
	eor	r7, r7, r5
	orrs	r7, r0, r7
	bne	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	mov	r0, #0
	mov	r1, #0
	mov	r7, #0
	bl	copysign
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	mov	r4, r6
	str	r5, [r6, #4]
	str	r7, [r6]
	str	r1, [r6, #12]
	str	r0, [r4, #8]!
	b	.LBB0_7
.section bb0_6
.LBB0_6:                                @ %if.end
	mov	r4, r6
	str	r1, [r6, #12]
	stm	r6, {r2, r3}
	mov	r7, r2
	mov	r5, r3
	str	r0, [r4, #8]!
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %return
	str	r7, [r6]
	str	r5, [r6, #4]
	stm	r4, {r0, r1}
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	cproj, .Ltmp0-cproj
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
