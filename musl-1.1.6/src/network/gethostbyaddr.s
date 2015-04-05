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
	.file	"src/network/gethostbyaddr.bc"
	.globl	gethostbyaddr
	.align	2
	.type	gethostbyaddr,%function
gethostbyaddr:                          @ @gethostbyaddr
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#20
	sub	sp, sp, #20
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r5, .LCPI0_0
	mov	r8, r2
	mov	r9, r1
	b	.LBB0_4
.LCPI0_0:
	.long	gethostbyaddr.h
.LBB0_4:                                @ %entry
	mov	r6, r0
	mov	r7, #63
	mov	r10, #1
	add	r11, sp, #16
	b	.LBB0_5
.LBB0_5:                                @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r5]
	bl	free
	orr	r7, r10, r7, lsl #1
	mov	r0, r7
	b	.LBB0_6
.LBB0_6:                                @ %do.body
                                        @   in Loop: Header=BB0_5 Depth=1
	bl	malloc
	mov	r4, r0
	str	r4, [r5]
	cmp	r4, #0
	beq	.LBB0_11
	b	.LBB0_7
.LBB0_7:                                @ %if.end
                                        @   in Loop: Header=BB0_5 Depth=1
	bl	__h_errno_location
	add	r2, r4, #20
	sub	r1, r7, #20
	mov	r3, r4
	b	.LBB0_8
.LBB0_8:                                @ %if.end
                                        @   in Loop: Header=BB0_5 Depth=1
	str	r2, [sp]
	stmib	sp, {r1, r11}
	str	r0, [sp, #12]
	mov	r0, r6
	b	.LBB0_9
.LBB0_9:                                @ %if.end
                                        @   in Loop: Header=BB0_5 Depth=1
	mov	r1, r9
	mov	r2, r8
	bl	gethostbyaddr_r
	mov	r1, r0
	cmp	r1, #34
	beq	.LBB0_5
	b	.LBB0_10
.LBB0_10:                               @ %do.end
	ldr	r0, [r5]
	cmp	r1, #0
	movne	r0, #0
	b	.LBB0_12
.LBB0_11:                               @ %if.then
	bl	__h_errno_location
	mov	r1, #3
	str	r1, [r0]
	mov	r0, #0
	b	.LBB0_12
.LBB0_12:                               @ %return
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	gethostbyaddr, .Ltmp0-gethostbyaddr
	.cantunwind
	.fnend

	.type	gethostbyaddr.h,%object @ @gethostbyaddr.h
	.local	gethostbyaddr.h
	.comm	gethostbyaddr.h,4,4

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
