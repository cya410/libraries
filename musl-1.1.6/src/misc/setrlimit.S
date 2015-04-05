.section setrlimit_text
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
	.file	"src/misc/setrlimit.bc"
	.globl	__setrlimit
	.align	2
	.type	__setrlimit,%function
.section bb0_0
__setrlimit:                            @ @__setrlimit
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r7, #113
	mov	r12, r0
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r2, r1
	mov	r0, #0
	mov	r3, #0
	mov	lr, #0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	orr	r7, r7, #256
	mov	r1, r12
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #38
	bne	.LBB0_10
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.end
	ldm	r2, {r0, r1}
	mov	r3, #0
	mov	r7, #75
	cmn	r0, #1
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	movne	r3, #1
	cmp	r1, #0
	mvn	r1, #0
	movne	r3, lr
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	cmp	r3, #0
	mov	r3, #0
	moveq	r0, r1
	str	r0, [sp]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.end
	ldr	r0, [r2, #8]
	ldr	r2, [r2, #12]
	cmn	r0, #1
	movne	r3, #1
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.end
	cmp	r2, #0
	movne	r3, lr
	cmp	r3, #0
	movne	r1, r0
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end
	mov	r0, r12
	str	r1, [sp, #4]
	mov	r1, sp
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %return
	add	sp, sp, #8
	pop	{r7, lr}
	mov	pc, lr
.Ltmp0:
	.size	__setrlimit, .Ltmp0-__setrlimit
	.cantunwind
	.fnend

	.globl	setrlimit
	.align	2
	.type	setrlimit,%function
.section bb1_0
setrlimit:                              @ @setrlimit
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	ldr	r0, .LCPI1_0
	mov	r4, #0
	b	.LBB1_3
.LCPI1_0:
	.long	do_setrlimit
.section bb1_3
.LBB1_3:                                @ %entry
	add	r1, sp, #4
	str	r4, [sp, #12]
	bl	__synccall
	ldr	r5, [sp, #12]
	cmp	r5, #0
	beq	.LBB1_5
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %if.then
	bl	__errno_location
	mvn	r4, #0
	str	r5, [r0]
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %return
	mov	r0, r4
	add	sp, sp, #16
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	setrlimit, .Ltmp1-setrlimit
	.cantunwind
	.fnend

	.align	2
	.type	do_setrlimit,%function
.section bb2_0
do_setrlimit:                           @ @do_setrlimit
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4, #8]
	cmp	r0, #0
	bne	.LBB2_3
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %if.end
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	bl	__setrlimit
	rsb	r0, r0, #0
	str	r0, [r4, #8]
	b	.LBB2_3
.section bb2_3
.LBB2_3:                                @ %return
	pop	{r4, lr}
	mov	pc, lr
.Ltmp2:
	.size	do_setrlimit, .Ltmp2-do_setrlimit
	.cantunwind
	.fnend


	.weak	setrlimit64
setrlimit64 = setrlimit
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
