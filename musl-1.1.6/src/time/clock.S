.section clock_text
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
	.file	"src/time/clock.bc"
	.globl	clock
	.align	2
	.type	clock,%function
.section bb0_0
clock:                                  @ @clock
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r1, sp
	mov	r0, #2
	bl	__clock_gettime
	cmp	r0, #0
	bne	.LBB0_3
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %if.end
	ldr	r1, [sp]
	mov	r0, #99
	orr	r0, r0, #2048
	cmp	r1, r0
	ble	.LBB0_4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %return
	mvn	r0, #0
	b	.LBB0_7
.section bb0_4
.LBB0_4:                                @ %lor.lhs.false
	ldr	r12, .LCPI0_0
	ldr	r2, [sp, #4]
	smull	r3, r0, r2, r12
	mov	r12, #576
	b	.LBB0_5
.LCPI0_0:
	.long	274877907               @ 0x10624dd3
.section bb0_5
.LBB0_5:                                @ %lor.lhs.false
	asr	r2, r0, #6
	orr	r12, r12, #999424
	add	r2, r2, r0, lsr #31
	mul	r3, r1, r12
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %lor.lhs.false
	mla	r0, r1, r12, r2
	mvn	r1, #-2147483648
	sub	r1, r1, r3
	cmp	r2, r1
	mvngt	r0, #0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %return
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	clock, .Ltmp0-clock
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
