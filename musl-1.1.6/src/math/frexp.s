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
	.file	"src/math/frexp.bc"
	.globl	frexp
	.align	2
	.type	frexp,%function
frexp:                                  @ @frexp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r1
	mov	r1, #255
	mov	r6, r2
	mov	r4, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	orr	r1, r1, #1792
	and	r0, r1, r5, lsr #20
	cmp	r0, r1
	beq	.LBB0_12
	b	.LBB0_4
.LBB0_4:                                @ %entry
	cmp	r0, #0
	bne	.LBB0_11
	b	.LBB0_5
.LBB0_5:                                @ %if.then
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	b	.LBB0_6
.LBB0_6:                                @ %if.then
	mov	r7, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.LBB0_10
	b	.LBB0_7
.LBB0_7:                                @ %if.then2
	mov	r3, #66060288
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	b	.LBB0_8
.LBB0_8:                                @ %if.then2
	orr	r3, r3, #1073741824
	bl	__aeabi_dmul
	mov	r2, r6
	bl	frexp
	b	.LBB0_9
.LBB0_9:                                @ %if.then2
	mov	r4, r0
	ldr	r0, [r6]
	mov	r5, r1
	sub	r7, r0, #64
	b	.LBB0_10
.LBB0_10:                               @ %if.end
	str	r7, [r6]
	b	.LBB0_12
.LBB0_11:                               @ %if.end7
	ldr	r1, .LCPI0_2
	add	r0, r0, r1
	str	r0, [r6]
	ldr	r0, .LCPI0_3
	and	r0, r5, r0
	orr	r0, r0, #266338304
	orr	r5, r0, #805306368
	b	.LBB0_12
.LCPI0_2:
	.long	4294966274              @ 0xfffffc02
.LCPI0_3:
	.long	2148532223              @ 0x800fffff
.LBB0_12:                               @ %return
	mov	r0, r4
	mov	r1, r5
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	frexp, .Ltmp0-frexp
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
