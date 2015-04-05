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
	.file	"src/network/gethostbyname2.bc"
	.globl	gethostbyname2
	.align	2
	.type	gethostbyname2,%function
gethostbyname2:                         @ @gethostbyname2
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r4, .LCPI0_0
	mov	r8, r1
	mov	r5, r0
	mov	r6, #63
	mov	r9, #1
	add	r10, sp, #12
	b	.LBB0_4
.LCPI0_0:
	.long	gethostbyname2.h
.LBB0_4:                                @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	bl	free
	orr	r6, r9, r6, lsl #1
	mov	r0, r6
	b	.LBB0_5
.LBB0_5:                                @ %do.body
                                        @   in Loop: Header=BB0_4 Depth=1
	bl	malloc
	mov	r7, r0
	str	r7, [r4]
	cmp	r7, #0
	beq	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                @ %if.end
                                        @   in Loop: Header=BB0_4 Depth=1
	bl	__h_errno_location
	sub	r1, r6, #20
	add	r3, r7, #20
	mov	r2, r7
	b	.LBB0_7
.LBB0_7:                                @ %if.end
                                        @   in Loop: Header=BB0_4 Depth=1
	stm	sp, {r1, r10}
	str	r0, [sp, #8]
	mov	r0, r5
	mov	r1, r8
	b	.LBB0_8
.LBB0_8:                                @ %if.end
                                        @   in Loop: Header=BB0_4 Depth=1
	bl	gethostbyname2_r
	mov	r1, r0
	cmp	r1, #34
	beq	.LBB0_4
	b	.LBB0_9
.LBB0_9:                                @ %do.end
	ldr	r0, [r4]
	cmp	r1, #0
	movne	r0, #0
	b	.LBB0_11
.LBB0_10:                               @ %if.then
	bl	__h_errno_location
	mov	r1, #3
	str	r1, [r0]
	mov	r0, #0
	b	.LBB0_11
.LBB0_11:                               @ %return
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	gethostbyname2, .Ltmp0-gethostbyname2
	.cantunwind
	.fnend

	.type	gethostbyname2.h,%object @ @gethostbyname2.h
	.local	gethostbyname2.h
	.comm	gethostbyname2.h,4,4

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
