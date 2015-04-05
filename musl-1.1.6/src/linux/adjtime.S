.section adjtime_text
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
	.file	"src/linux/adjtime.bc"
	.globl	adjtime
	.align	2
	.type	adjtime,%function
.section bb0_0
adjtime:                                @ @adjtime
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#128
	sub	sp, sp, #128
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	mov	r0, sp
	mov	r1, #128
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r2, #0
	bl	__aeabi_memset
	cmp	r5, #0
	beq	.LBB0_8
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	ldr	r0, [r5]
	cmp	r0, #1000
	bgt	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %lor.lhs.false
	ldr	r1, [r5, #4]
	ldr	r2, .LCPI0_2
	cmp	r1, r2
	blt	.LBB0_7
	b	.LBB0_6
.LCPI0_2:
	.long	1000000001              @ 0x3b9aca01
.section bb0_6
.LBB0_6:                                @ %if.then2
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB0_14
.section bb0_7
.LBB0_7:                                @ %if.end
	mov	r2, #576
	orr	r2, r2, #999424
	mla	r3, r0, r2, r1
	mov	r0, #1
	orr	r0, r0, #32768
	str	r3, [sp, #4]
	str	r0, [sp]
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end5
	mov	r0, sp
	mov	r7, #124
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end5
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	blt	.LBB0_14
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end10
	mov	r0, #0
	cmp	r4, #0
	beq	.LBB0_14
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.then12
	ldr	r1, .LCPI0_3
	ldr	r3, [sp, #4]
	smull	r2, r5, r3, r1
	asr	r1, r5, #18
	b	.LBB0_12
.LCPI0_3:
	.long	1125899907              @ 0x431bde83
.section bb0_12
.LBB0_12:                               @ %if.then12
	mov	r2, #576
	add	r1, r1, r5, lsr #31
	orr	r2, r2, #999424
	mul	r5, r1, r2
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then12
	sub	r3, r3, r5
	cmp	r3, #0
	stm	r4, {r1, r3}
	sublt	r1, r1, #1
	addlt	r2, r3, r2
	stmlt	r4, {r1, r2}
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %cleanup
	add	sp, sp, #128
	pop	{r4, r5, r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	adjtime, .Ltmp0-adjtime
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
