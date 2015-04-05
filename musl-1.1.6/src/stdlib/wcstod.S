.section wcstod_text
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
	.file	"src/stdlib/wcstod.bc"
	.globl	wcstof
	.align	2
	.type	wcstof,%function
.section bb0_0
wcstof:                                 @ @wcstof
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	mov	r2, #0
	bl	wcstox
	bl	__aeabi_d2f
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	wcstof, .Ltmp0-wcstof
	.cantunwind
	.fnend

	.align	2
	.type	wcstox,%function
.section bb1_0
wcstox:                                 @ @wcstox
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#200
	sub	sp, sp, #200
	mov	r8, r2
	mov	r4, r1
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r5, r0
	mov	r0, sp
	mov	r1, #136
	mov	r2, #0
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	mov	r6, #0
	bl	__aeabi_memset
	add	r0, sp, #136
	str	r6, [sp]
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %entry
	str	r6, [sp, #8]
	str	r6, [sp, #4]
	sub	r6, r5, #4
	add	r0, r0, #4
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %entry
	str	r0, [sp, #44]
	mov	r0, #60
	str	r0, [sp, #48]
	mvn	r0, #0
	str	r0, [sp, #76]
	ldr	r0, .LCPI1_0
	str	r0, [sp, #32]
	b	.LBB1_7
.LCPI1_0:
	.long	do_read
.section bb1_7
.LBB1_7:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #4]!
	bl	iswspace
	cmp	r0, #0
	bne	.LBB1_7
	b	.LBB1_8
.section bb1_8
.LBB1_8:                                @ %while.end
	mov	r7, sp
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp, #84]
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %while.end
	mov	r0, r7
	bl	__shlim
	mov	r0, r7
	mov	r1, r8
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %while.end
	mov	r2, #1
	bl	__floatscan
	cmp	r4, #0
	beq	.LBB1_12
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %if.then
	ldmib	sp, {r2, r3}
	ldr	r7, [sp, #120]
	sub	r2, r2, r3
	adds	r2, r7, r2
	addne	r5, r6, r2, lsl #2
	str	r5, [r4]
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.end
	add	sp, sp, #200
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp1:
	.size	wcstox, .Ltmp1-wcstox
	.cantunwind
	.fnend

	.globl	wcstod
	.align	2
	.type	wcstod,%function
.section bb2_0
wcstod:                                 @ @wcstod
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	mov	r2, #1
	b	wcstox
.Ltmp2:
	.size	wcstod, .Ltmp2-wcstod
	.cantunwind
	.fnend

	.globl	wcstold
	.align	2
	.type	wcstold,%function
.section bb3_0
wcstold:                                @ @wcstold
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	mov	r2, #2
	b	wcstox
.Ltmp3:
	.size	wcstold, .Ltmp3-wcstold
	.cantunwind
	.fnend

	.align	2
	.type	do_read,%function
.section bb4_0
do_read:                                @ @do_read
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	ldr	r4, [r0, #84]
	ldr	r5, [r0, #48]
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	ldr	lr, .LCPI4_0
	mov	r12, #0
	ldr	r3, [r4]
	cmp	r3, #0
	b	.LBB4_3
.LCPI4_0:
	.long	.L.str
.section bb4_3
.LBB4_3:                                @ %entry
	mov	r3, #0
	movne	lr, r4
	cmp	r5, #0
	beq	.LBB4_8
	b	.LBB4_4
.section bb4_4
.LBB4_4:
	mov	r3, #0
	b	.LBB4_5
.section bb4_5
.LBB4_5:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [lr, r3, lsl #2]
	cmp	r4, #0
	beq	.LBB4_8
	b	.LBB4_6
.section bb4_6
.LBB4_6:                                @ %for.body
                                        @   in Loop: Header=BB4_5 Depth=1
	ldr	r5, [r0, #44]
	cmp	r4, #128
	movhs	r4, #64
	strb	r4, [r5, r3]
	b	.LBB4_7
.section bb4_7
.LBB4_7:                                @ %for.body
                                        @   in Loop: Header=BB4_5 Depth=1
	add	r3, r3, #1
	ldr	r4, [r0, #48]
	cmp	r3, r4
	blo	.LBB4_5
	b	.LBB4_8
.section bb4_8
.LBB4_8:                                @ %for.end
	ldr	r4, [r0, #44]
	add	r5, lr, r3, lsl #2
	cmp	r2, #0
	str	r5, [r0, #84]
	add	r6, r4, r3
	stmib	r0, {r4, r6}
	beq	.LBB4_10
	b	.LBB4_9
.section bb4_9
.LBB4_9:                                @ %for.end
	cmp	r3, #0
	addne	r2, r4, #1
	movne	r12, #1
	strne	r2, [r0, #4]
	ldrbne	r0, [r4]
	strbne	r0, [r1]
	b	.LBB4_10
.section bb4_10
.LBB4_10:                               @ %return
	mov	r0, r12
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp4:
	.size	do_read, .Ltmp4-do_read
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str4.4,"aMS",%progbits,4
	.align	2
.L.str:
	.long	64                      @ 0x40
	.long	0                       @ 0x0
	.size	.L.str, 8


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
