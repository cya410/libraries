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
	.file	"src/math/frexpf.bc"
	.globl	frexpf
	.align	2
	.type	frexpf,%function
frexpf:                                 @ @frexpf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	mov	r4, r0
	mov	r0, #255
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r1
	and	r0, r0, r4, lsr #23
	cmp	r0, #255
	beq	.LBB0_9
	b	.LBB0_3
.LBB0_3:                                @ %entry
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	mov	r0, r4
	mov	r1, #0
	mov	r6, #0
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                @ %if.then2
	mov	r1, #528482304
	mov	r0, r4
	orr	r1, r1, #1073741824
	bl	__aeabi_fmul
	b	.LBB0_6
.LBB0_6:                                @ %if.then2
	mov	r1, r5
	bl	frexpf
	mov	r4, r0
	ldr	r0, [r5]
	sub	r6, r0, #64
	b	.LBB0_7
.LBB0_7:                                @ %if.end
	str	r6, [r5]
	b	.LBB0_9
.LBB0_8:                                @ %if.end8
	sub	r0, r0, #126
	str	r0, [r5]
	ldr	r0, .LCPI0_0
	and	r0, r4, r0
	orr	r4, r0, #1056964608
	b	.LBB0_9
.LCPI0_0:
	.long	2155872255              @ 0x807fffff
.LBB0_9:                                @ %return
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	frexpf, .Ltmp0-frexpf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
