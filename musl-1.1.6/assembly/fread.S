.section fread_text
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
	.file	"src/stdio/fread.bc"
	.globl	fread
	.align	2
	.type	fread,%function
.section bb0_0
fread:                                  @ @fread
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
	.pad	#4
	sub	sp, sp, #4
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	mov	r5, r3
	mov	r7, r0
	mov	r10, r2
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	mov	r8, r1
	mov	r9, #0
	ldr	r0, [r5, #76]
	mul	r11, r10, r8
	cmp	r0, #0
	blt	.LBB0_6
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %cond.true
	mov	r0, r5
	bl	__lockfile
	mov	r9, r0
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %cond.end
	ldrsb	r0, [r5, #74]
	add	r1, r0, #255
	orr	r0, r1, r0
	strb	r0, [r5, #74]
	b	.LBB0_7
.section bb0_7
.LBB0_7:                                @ %cond.end
	ldr	r1, [r5, #4]
	ldr	r0, [r5, #8]
	sub	r4, r0, r1
	cmp	r4, #1
	blt	.LBB0_10
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then
	cmp	r4, r11
	mov	r0, r7
	movhs	r4, r11
	mov	r2, r4
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %if.then
	bl	memcpy
	ldr	r0, [r5, #4]
	sub	r6, r11, r4
	add	r7, r7, r4
	add	r0, r0, r4
	str	r0, [r5, #4]
	b	.LBB0_11
.section bb0_10
.LBB0_10:
	mov	r6, r11
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %for.cond.preheader
	cmp	r6, #0
	beq	.LBB0_16
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	bl	__toread
	cmp	r0, #0
	bne	.LBB0_18
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %cond.end32
                                        @   in Loop: Header=BB0_12 Depth=1
	ldr	r3, [r5, #32]
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %cond.end32
                                        @   in Loop: Header=BB0_12 Depth=1
	mov	lr, pc
	mov	pc, r3
	add	r1, r0, #1
	cmp	r1, #1
	bls	.LBB0_18
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %for.inc
                                        @   in Loop: Header=BB0_12 Depth=1
	add	r7, r7, r0
	subs	r6, r6, r0
	bne	.LBB0_12
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %for.end
	cmp	r9, #0
	beq	.LBB0_21
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then45
	mov	r0, r5
	bl	__unlockfile
	b	.LBB0_21
.section bb0_18
.LBB0_18:                               @ %if.then36
	cmp	r9, #0
	beq	.LBB0_20
	b	.LBB0_19
.section bb0_19
.LBB0_19:                               @ %if.then38
	mov	r0, r5
	bl	__unlockfile
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end39
	sub	r0, r11, r6
	mov	r1, r8
	bl	__aeabi_uidiv
	mov	r10, r0
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %return
	mov	r0, r10
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	fread, .Ltmp0-fread
	.cantunwind
	.fnend

	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	fread_unlocked
fread_unlocked = fread
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
