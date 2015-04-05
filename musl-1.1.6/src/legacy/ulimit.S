.section ulimit_text
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
	.file	"src/legacy/ulimit.bc"
	.globl	ulimit
	.align	2
	.type	ulimit,%function
.section bb0_0
ulimit:                                 @ @ulimit
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	add	r12, sp, #36
	mov	r4, r0
	mov	r0, #1
	stm	r12, {r1, r2, r3}
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	add	r1, sp, #8
	bl	getrlimit
	cmp	r4, #2
	bne	.LBB0_8
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	add	r0, sp, #36
	str	r0, [sp, #4]
	add	r0, r0, #4
	str	r0, [sp, #4]
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	ldr	r0, [sp, #36]
	lsl	r1, r0, #9
	str	r1, [sp, #8]
	asr	r1, r0, #31
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then
	lsl	r1, r1, #9
	orr	r0, r1, r0, lsr #23
	add	r1, sp, #8
	str	r0, [sp, #12]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.then
	mov	r0, #1
	bl	setrlimit
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	bne	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end6
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	lsr	r0, r0, #9
	orr	r0, r0, r1, lsl #23
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %return
	add	sp, sp, #24
	pop	{r4, lr}
	add	sp, sp, #16
	mov	pc, lr
.Ltmp0:
	.size	ulimit, .Ltmp0-ulimit
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
