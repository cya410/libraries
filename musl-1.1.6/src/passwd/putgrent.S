.section putgrent_text
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
	.file	"src/passwd/putgrent.bc"
	.globl	putgrent
	.align	2
	.type	putgrent,%function
.section bb0_0
putgrent:                               @ @putgrent
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
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r4, r1
	mov	r5, r0
	mov	r0, r4
	bl	flockfile
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #8]
	ldr	r1, .LCPI0_4
	str	r0, [sp]
	b	.LBB0_5
.LCPI0_4:
	.long	.L.str
.section bb0_5
.LBB0_5:                                @ %entry
	mov	r0, r4
	bl	fprintf
	mov	r7, r0
	cmp	r7, #0
	blt	.LBB0_12
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.end
	ldr	r0, [r5, #12]
	cmp	r0, #0
	ldrne	r3, [r0]
	cmpne	r3, #0
	beq	.LBB0_11
	b	.LBB0_7
.section bb0_7
.LBB0_7:
	ldr	r9, .LCPI0_5
	ldr	r10, .LCPI0_6
	ldr	r8, .LCPI0_7
	mov	r6, #1
	b	.LBB0_8
.LCPI0_5:
	.long	.L.str2
.LCPI0_6:
	.long	.L.str3
.LCPI0_7:
	.long	.L.str1
.section bb0_8
.LBB0_8:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r6, #1
	mov	r2, r10
	mov	r0, r4
	mov	r1, r8
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %for.body
                                        @   in Loop: Header=BB0_8 Depth=1
	movne	r2, r9
	bl	fprintf
	mov	r7, r0
	cmp	r7, #0
	blt	.LBB0_12
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %for.cond
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r0, [r5, #12]
	ldr	r3, [r0, r6, lsl #2]
	add	r6, r6, #1
	cmp	r3, #0
	bne	.LBB0_8
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %if.end11
	mov	r0, #10
	mov	r1, r4
	bl	fputc
	mov	r7, r0
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %done
	mov	r0, r4
	bl	funlockfile
	asr	r0, r7, #31
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	putgrent, .Ltmp0-putgrent
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%s:%s:%d:"
	.size	.L.str, 10

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"%s%s"
	.size	.L.str1, 5

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	","
	.size	.L.str2, 2

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.zero	1
	.size	.L.str3, 1


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
