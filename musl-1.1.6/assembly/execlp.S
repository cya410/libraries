.section execlp_text
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
	.file	"src/process/execlp.bc"
	.globl	execlp
	.align	2
	.type	execlp,%function
.section bb0_0
execlp:                                 @ @execlp
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#8
	sub	sp, sp, #8
	add	lr, r11, #8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r12, r1
	str	r3, [r11, #12]
	str	r2, [r11, #8]
	mvn	r2, #0
	orr	r1, lr, #4
	str	lr, [r11, #-12]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	str	r1, [r11, #-12]
	add	r3, r1, #4
	add	r2, r2, #1
	ldr	r1, [r1, #-4]
	cmp	r1, #0
	mov	r1, r3
	bne	.LBB0_4
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.end
	mov	r1, #15
	mov	r4, sp
	add	r1, r1, r2, lsl #2
	bic	r3, r1, #7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.end
	sub	r1, r4, r3
	mov	sp, r1
	str	r12, [r4, -r3]
	add	r12, r2, #1
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.end
	mov	r3, #1
	str	lr, [r11, #-12]
	cmp	r12, #2
	blt	.LBB0_11
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.body6.lr.ph
	ldr	r3, [r11, #-12]
	add	lr, r1, #4
	add	r3, r3, #4
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.body6
                                        @ =>This Inner Loop Header: Depth=1
	str	r3, [r11, #-12]
	subs	r2, r2, #1
	ldr	r4, [r3, #-4]
	add	r3, r3, #4
	str	r4, [lr], #4
	bne	.LBB0_9
	b	.LBB0_10
.section bb0_10
.LBB0_10:
	mov	r3, r12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.end13
	mov	r2, #0
	str	r2, [r1, r3, lsl #2]
	bl	execvp
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	add	sp, sp, #8
	mov	pc, lr
.Ltmp0:
	.size	execlp, .Ltmp0-execlp
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
