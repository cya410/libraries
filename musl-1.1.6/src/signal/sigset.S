.section sigset_text
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
	.file	"src/signal/sigset.bc"
	.globl	sigset
	.align	2
	.type	sigset,%function
.section bb0_0
sigset:                                 @ @sigset
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#408
	sub	sp, sp, #408
	mov	r5, sp
	mov	r4, r0
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r6, r1
	mov	r0, r5
	bl	sigemptyset
	mov	r0, r5
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r1, r4
	bl	sigaddset
	mvn	r5, #0
	cmp	r0, #0
	blt	.LBB0_14
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	cmp	r6, #2
	beq	.LBB0_10
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.else
	str	r6, [sp, #268]
	mov	r0, #0
	add	r6, sp, #268
	str	r0, [sp, #400]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %if.else
	add	r0, r6, #4
	bl	sigemptyset
	add	r2, sp, #128
	mov	r0, r4
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.else
	mov	r1, r6
	bl	sigaction
	cmp	r0, #0
	blt	.LBB0_14
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.end16
	mov	r1, sp
	mov	r0, #1
	b	.LBB0_12
.section bb0_10
.LBB0_10:                               @ %if.then3
	add	r2, sp, #128
	mov	r0, r4
	mov	r1, #0
	bl	sigaction
	cmp	r0, #0
	blt	.LBB0_14
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end7
	mov	r1, sp
	mov	r0, #0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end16
	mov	r2, r1
	bl	sigprocmask
	cmp	r0, #0
	blt	.LBB0_14
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end21
	mov	r0, sp
	mov	r1, r4
	bl	sigismember
	ldr	r5, [sp, #128]
	cmp	r0, #0
	movne	r5, #2
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %cleanup
	mov	r0, r5
	add	sp, sp, #408
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	sigset, .Ltmp0-sigset
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
