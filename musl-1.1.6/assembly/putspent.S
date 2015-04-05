.section putspent_text
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
	.file	"src/passwd/putspent.bc"
	.globl	putspent
	.align	2
	.type	putspent,%function
.section bb0_0
putspent:                               @ @putspent
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#60
	sub	sp, sp, #60
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r9, [r0, #16]
	ldr	r10, [r0, #20]
	ldr	r6, [r0, #24]
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r7, [r0, #28]
	ldm	r0, {r2, r3, r12, lr}
	ldr	r0, [r0, #32]
	mov	r11, #0
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r5, #0
	mov	r4, #0
	mov	r8, #0
	cmn	r0, #1
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	moveq	r0, #0
	mvnne	r11, #0
	cmn	r7, #1
	moveq	r7, #0
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	mvnne	r5, #0
	cmn	r6, #1
	mvnne	r4, #0
	moveq	r6, #0
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %entry
	cmn	r10, #1
	str	r4, [sp, #32]
	str	r6, [sp, #36]
	str	r5, [sp, #40]
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %entry
	str	r7, [sp, #44]
	str	r11, [sp, #48]
	str	r0, [sp, #52]
	mov	r0, #0
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %entry
	moveq	r10, #0
	mvnne	r0, #0
	cmn	r9, #1
	str	r10, [sp, #28]
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %entry
	str	r0, [sp, #24]
	mov	r0, #0
	moveq	r9, #0
	mvnne	r0, #0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %entry
	cmn	lr, #1
	str	r9, [sp, #20]
	str	r0, [sp, #16]
	mov	r0, #0
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %entry
	moveq	lr, #0
	mvnne	r0, #0
	cmn	r12, #1
	str	lr, [sp, #12]
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %entry
	str	r0, [sp, #8]
	moveq	r12, #0
	ldr	r0, .LCPI0_2
	mvnne	r8, #0
	b	.LBB0_15
.LCPI0_2:
	.long	.L.str1
.section bb0_15
.LBB0_15:                               @ %entry
	cmp	r2, #0
	str	r12, [sp, #4]
	ldr	r12, .LCPI0_3
	str	r8, [sp]
	b	.LBB0_16
.LCPI0_3:
	.long	.L.str
.section bb0_16
.LBB0_16:                               @ %entry
	moveq	r2, r0
	cmp	r3, #0
	moveq	r3, r0
	mov	r0, r1
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %entry
	mov	r1, r12
	bl	fprintf
	asr	r0, r0, #31
	add	sp, sp, #60
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	putspent, .Ltmp0-putspent
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%s:%s:%.*ld:%.*ld:%.*ld:%.*ld:%.*ld:%.*ld:%.*lu\n"
	.size	.L.str, 49

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.zero	1
	.size	.L.str1, 1


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
