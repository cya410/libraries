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
	.file	"src/dirent/scandir.bc"
	.globl	scandir
	.align	2
	.type	scandir,%function
scandir:                                @ @scandir
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
	mov	r8, r3
	mov	r4, r2
	mov	r7, r1
	b	.LBB0_4
.LBB0_4:                                @ %entry
	bl	opendir
	mov	r6, r0
	bl	__errno_location
	mov	r5, r0
	mvn	r0, #0
	cmp	r6, #0
	beq	.LBB0_26
	b	.LBB0_5
.LBB0_5:                                @ %while.cond.preheader
	ldr	r0, [r5]
	str	r7, [sp, #8]            @ 4-byte Spill
	mov	r11, #0
	mov	r10, #0
	b	.LBB0_6
.LBB0_6:                                @ %while.cond.preheader
	mov	r9, #0
	mov	r7, #0
	str	r8, [sp, #4]            @ 4-byte Spill
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	b	.LBB0_8
.LBB0_7:                                @ %if.end28
                                        @   in Loop: Header=BB0_8 Depth=1
	ldrh	r2, [r8, #16]
	mov	r1, r8
	bl	memcpy
	add	r7, r7, #1
	sub	r10, r10, #1
	str	r7, [sp, #16]           @ 4-byte Spill
	ldr	r7, [sp, #12]           @ 4-byte Reload
	b	.LBB0_8
.LBB0_8:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	str	r11, [r5]
	bl	readdir
	mov	r8, r0
	cmp	r8, #0
	beq	.LBB0_17
	b	.LBB0_9
.LBB0_9:                                @ %while.body
                                        @   in Loop: Header=BB0_8 Depth=1
	cmp	r4, #0
	beq	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               @ %land.lhs.true
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r0, r8
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	beq	.LBB0_8
	b	.LBB0_11
.LBB0_11:                               @ %if.end12
                                        @   in Loop: Header=BB0_8 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r0, r7
	bhs	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @   in Loop: Header=BB0_8 Depth=1
	str	r7, [sp, #12]           @ 4-byte Spill
	b	.LBB0_16
.LBB0_13:                               @ %if.then14
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r0, #1
	orr	r7, r0, r7, lsl #1
	cmp	r11, r7, lsr #30
	bne	.LBB0_17
	b	.LBB0_14
.LBB0_14:                               @ %if.end17
                                        @   in Loop: Header=BB0_8 Depth=1
	lsl	r1, r7, #2
	mov	r0, r9
	str	r7, [sp, #12]           @ 4-byte Spill
	mov	r7, r9
	b	.LBB0_15
.LBB0_15:                               @ %if.end17
                                        @   in Loop: Header=BB0_8 Depth=1
	bl	realloc
	mov	r9, r0
	cmp	r9, #0
	beq	.LBB0_18
	b	.LBB0_16
.LBB0_16:                               @ %if.end23
                                        @   in Loop: Header=BB0_8 Depth=1
	ldrh	r0, [r8, #16]
	bl	malloc
	ldr	r7, [sp, #16]           @ 4-byte Reload
	cmp	r0, #0
	str	r0, [r9, r7, lsl #2]
	bne	.LBB0_7
	b	.LBB0_17
.LBB0_17:
	mov	r7, r9
	b	.LBB0_18
.LBB0_18:                               @ %while.end
	mov	r0, r6
	bl	closedir
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LBB0_23
	b	.LBB0_19
.LBB0_19:                               @ %if.then36
	mov	r5, r7
	cmp	r5, #0
	ldrne	r0, [sp, #16]           @ 4-byte Reload
	cmpne	r0, #0
	beq	.LBB0_22
	b	.LBB0_20
.LBB0_20:                               @ %while.body42.preheader
	sub	r4, r5, #4
	b	.LBB0_21
.LBB0_21:                               @ %while.body42
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4, -r10, lsl #2]
	bl	free
	adds	r10, r10, #1
	bne	.LBB0_21
	b	.LBB0_22
.LBB0_22:                               @ %if.end45
	mov	r0, r5
	bl	free
	mvn	r0, #0
	b	.LBB0_26
.LBB0_23:                               @ %if.end46
	ldr	r0, [sp]                @ 4-byte Reload
	ldr	r3, [sp, #4]            @ 4-byte Reload
	ldr	r4, [sp, #16]           @ 4-byte Reload
	str	r0, [r5]
	mov	r5, r7
	cmp	r3, #0
	beq	.LBB0_25
	b	.LBB0_24
.LBB0_24:                               @ %if.then49
	mov	r0, r5
	mov	r1, r4
	mov	r2, #4
	bl	qsort
	b	.LBB0_25
.LBB0_25:                               @ %if.end50
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r5, [r0]
	mov	r0, r4
	b	.LBB0_26
.LBB0_26:                               @ %return
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	scandir, .Ltmp0-scandir
	.cantunwind
	.fnend


	.weak	scandir64
scandir64 = scandir
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
