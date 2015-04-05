.section getrlimit_text
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
	.file	"src/misc/getrlimit.bc"
	.globl	getrlimit
	.align	2
	.type	getrlimit,%function
.section bb0_0
getrlimit:                              @ @getrlimit
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
	mov	r7, #113
	mov	r4, r1
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r6, r0
	mov	r0, #0
	mov	r2, #0
	orr	r7, r7, #256
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r1, r6
	mov	r3, r4
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB0_14
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %lor.lhs.false
	bl	__errno_location
	ldr	r0, [r0]
	cmp	r0, #38
	bne	.LBB0_18
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end15
	mov	r1, sp
	mov	r7, #191
	mov	r0, r6
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end15
	bl	__syscall_ret
	mvn	r5, #0
	cmp	r0, #0
	blt	.LBB0_18
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end20
	ldr	r1, [sp]
	mov	r5, #0
	cmn	r1, #1
	mov	r0, r1
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end20
	movne	r0, #0
	str	r0, [r4, #4]
	mov	r0, r1
	movne	r0, r0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %if.end20
	str	r0, [r4]
	ldr	r0, [sp, #4]
	cmn	r0, #1
	mov	r2, r0
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end20
	movne	r2, #0
	str	r2, [r4, #12]
	mov	r2, r0
	movne	r2, r2
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end20
	cmn	r1, #1
	mvneq	r1, #0
	str	r2, [r4, #8]
	streq	r1, [r4]
	streq	r1, [r4, #4]
	cmn	r0, #1
	bne	.LBB0_18
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then46
	add	r0, r4, #8
	mvn	r1, #0
	str	r1, [r0]
	str	r1, [r0, #4]
	b	.LBB0_18
.section bb0_14
.LBB0_14:                               @ %do.body
	ldm	r4, {r0, r1}
	mov	r5, #0
	and	r0, r0, r1
	cmn	r0, #1
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %do.body
	mvneq	r0, #0
	streq	r0, [r4]
	streq	r0, [r4, #4]
	ldr	r0, [r4, #8]!
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %do.body
	ldr	r1, [r4, #4]
	and	r0, r0, r1
	cmn	r0, #1
	bne	.LBB0_18
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then6
	mvn	r0, #0
	str	r0, [r4]
	str	r0, [r4, #4]
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %return
	mov	r0, r5
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getrlimit, .Ltmp0-getrlimit
	.cantunwind
	.fnend

	.hidden	__syscall_ret

	.weak	getrlimit64
getrlimit64 = getrlimit
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
