.section tmpnam_text
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
	.file	"src/stdio/tmpnam.bc"
	.globl	tmpnam
	.align	2
	.type	tmpnam,%function
.section bb0_0
tmpnam:                                 @ @tmpnam
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
	.pad	#128
	sub	sp, sp, #128
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r1, .LCPI0_2
	add	r9, sp, #109
	mov	r8, r0
	mov	r2, #19
	b	.LBB0_4
.LCPI0_2:
	.long	.Ltmpnam.s
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r0, r9
	bl	__aeabi_memcpy
	add	r6, r9, #12
	mov	r10, #0
	mov	r4, sp
	mov	r5, #0
	mov	r7, #196
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	bl	__randname
	mov	r0, r4
	mov	r1, #104
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %for.body
                                        @   in Loop: Header=BB0_5 Depth=1
	mov	r2, #0
	bl	__aeabi_memset
	mov	r0, r9
	mov	r1, r4
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %for.body
                                        @   in Loop: Header=BB0_5 Depth=1
	str	r10, [sp, #4]
	str	r10, [sp]
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #2
	beq	.LBB0_9
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %for.cond
                                        @   in Loop: Header=BB0_5 Depth=1
	add	r5, r5, #1
	mov	r0, #0
	cmp	r5, #99
	ble	.LBB0_5
	b	.LBB0_10
.section bb0_9
.LBB0_9:                                @ %if.then
	ldr	r0, .LCPI0_3
	cmp	r8, #0
	add	r1, sp, #109
	movne	r0, r8
	bl	strcpy
	b	.LBB0_10
.LCPI0_3:
	.long	tmpnam.internal
.section bb0_10
.LBB0_10:                               @ %return
	add	sp, sp, #128
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	tmpnam, .Ltmp0-tmpnam
	.cantunwind
	.fnend

	.type	tmpnam.internal,%object @ @tmpnam.internal
	.local	tmpnam.internal
	.comm	tmpnam.internal,20,1
	.type	.Ltmpnam.s,%object      @ @tmpnam.s
	.section	.rodata.str1.1,"aMS",%progbits,1
.Ltmpnam.s:
	.asciz	"/tmp/tmpnam_XXXXXX"
	.size	.Ltmpnam.s, 19


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
