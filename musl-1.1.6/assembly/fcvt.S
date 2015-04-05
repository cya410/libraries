.section fcvt_text
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
	.file	"src/stdlib/fcvt.bc"
	.globl	fcvt
	.align	2
	.type	fcvt,%function
.section bb0_0
fcvt:                                   @ @fcvt
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#488
	sub	sp, sp, #488
	.pad	#1024
	sub	sp, sp, #1024
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r6, #376
	mov	r9, r1
	mov	r4, r2
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldr	r1, .LCPI0_4
	add	r5, sp, #12
	mov	r10, r0
	mov	r8, r3
	b	.LBB0_5
.LCPI0_4:
	.long	.L.str
.section bb0_5
.LBB0_5:                                @ %entry
	orr	r6, r6, #1024
	mov	r0, r5
	str	r10, [sp]
	str	r9, [sp, #4]
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %entry
	cmp	r4, r6
	movls	r6, r4
	mov	r2, r6
	bl	sprintf
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %entry
	ldrb	r0, [sp, #12]
	mov	r7, #0
	cmp	r0, #45
	moveq	r7, #1
	ldrb	r0, [r5, r7]
	cmp	r0, #48
	bne	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then9
	ldr	r1, .LCPI0_6
	orr	r0, r7, #2
	add	r0, r5, r0
	bl	strspn
	b	.LBB0_10
.LCPI0_6:
	.long	.L.str1
.section bb0_9
.LBB0_9:                                @ %if.else
	ldr	r1, .LCPI0_5
	add	r0, r5, r7
	bl	strcspn
	rsb	r0, r0, #0
	b	.LBB0_10
.LCPI0_5:
	.long	.L.str2
.section bb0_10
.LBB0_10:                               @ %if.end16
	ldr	r1, [sp, #1544]
	cmp	r6, r0
	ble	.LBB0_12
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end25
	str	r1, [sp]
	sub	r2, r6, r0
	mov	r0, r10
	mov	r1, r9
	mov	r3, r8
	bl	ecvt
	b	.LBB0_13
.section bb0_12
.LBB0_12:                               @ %if.then19
	mov	r0, #1
	str	r7, [r1]
	rsb	r1, r4, #14
	cmp	r6, #14
	str	r0, [r8]
	ldr	r0, .LCPI0_7
	addls	r0, r0, r1
	b	.LBB0_13
.LCPI0_7:
	.long	.L.str3
.section bb0_13
.LBB0_13:                               @ %cleanup
	add	sp, sp, #488
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	fcvt, .Ltmp0-fcvt
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%.*f"
	.size	.L.str, 5

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"0"
	.size	.L.str1, 2

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"."
	.size	.L.str2, 2

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"000000000000000"
	.size	.L.str3, 16


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
