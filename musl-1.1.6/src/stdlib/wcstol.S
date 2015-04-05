.section wcstol_text
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
	.file	"src/stdlib/wcstol.bc"
	.globl	wcstoull
	.align	2
	.type	wcstoull,%function
.section bb0_0
wcstoull:                               @ @wcstoull
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mvn	r3, #0
	str	r3, [sp]
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	str	r3, [sp, #4]
	bl	wcstox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	wcstoull, .Ltmp0-wcstoull
	.cantunwind
	.fnend

	.align	2
	.type	wcstox,%function
.section bb1_0
wcstox:                                 @ @wcstox
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#208
	sub	sp, sp, #208
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r8, r2
	mov	r4, r1
	mov	r5, r0
	add	r0, sp, #8
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %entry
	mov	r1, #136
	mov	r2, #0
	mov	r6, #0
	bl	__aeabi_memset
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %entry
	add	r0, sp, #144
	str	r6, [sp, #8]
	str	r6, [sp, #16]
	str	r6, [sp, #12]
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %entry
	ldr	r9, [sp, #244]
	ldr	r10, [sp, #240]
	sub	r6, r5, #4
	add	r0, r0, #4
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %entry
	str	r0, [sp, #52]
	mov	r0, #60
	str	r0, [sp, #56]
	mvn	r0, #0
	str	r0, [sp, #84]
	ldr	r0, .LCPI1_0
	str	r0, [sp, #40]
	b	.LBB1_8
.LCPI1_0:
	.long	do_read
.section bb1_8
.LBB1_8:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #4]!
	bl	iswspace
	cmp	r0, #0
	bne	.LBB1_8
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %while.end
	add	r7, sp, #8
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp, #92]
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %while.end
	mov	r0, r7
	bl	__shlim
	mov	r0, r7
	mov	r1, r8
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %while.end
	mov	r2, #1
	str	r10, [sp]
	str	r9, [sp, #4]
	bl	__intscan
	cmp	r4, #0
	beq	.LBB1_13
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.then
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #16]
	ldr	r7, [sp, #128]
	sub	r2, r2, r3
	adds	r2, r7, r2
	addne	r5, r6, r2, lsl #2
	str	r5, [r4]
	b	.LBB1_13
.section bb1_13
.LBB1_13:                               @ %if.end
	add	sp, sp, #208
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp1:
	.size	wcstox, .Ltmp1-wcstox
	.cantunwind
	.fnend

	.globl	wcstoll
	.align	2
	.type	wcstoll,%function
.section bb2_0
wcstoll:                                @ @wcstoll
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #-2147483648
	mov	r3, #0
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	stm	sp, {r3, r12}
	bl	wcstox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	wcstoll, .Ltmp2-wcstoll
	.cantunwind
	.fnend

	.globl	wcstoul
	.align	2
	.type	wcstoul,%function
.section bb3_0
wcstoul:                                @ @wcstoul
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #0
	mvn	r3, #0
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %entry
	stm	sp, {r3, r12}
	bl	wcstox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp3:
	.size	wcstoul, .Ltmp3-wcstoul
	.cantunwind
	.fnend

	.globl	wcstol
	.align	2
	.type	wcstol,%function
.section bb4_0
wcstol:                                 @ @wcstol
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #0
	mov	r3, #-2147483648
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	stm	sp, {r3, r12}
	bl	wcstox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp4:
	.size	wcstol, .Ltmp4-wcstol
	.cantunwind
	.fnend

	.globl	wcstoimax
	.align	2
	.type	wcstoimax,%function
.section bb5_0
wcstoimax:                              @ @wcstoimax
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB5_1
.section bb5_1
.LBB5_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, #-2147483648
	mov	r3, #0
	b	.LBB5_2
.section bb5_2
.LBB5_2:                                @ %entry
	stm	sp, {r3, r12}
	bl	wcstox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp5:
	.size	wcstoimax, .Ltmp5-wcstoimax
	.cantunwind
	.fnend

	.globl	wcstoumax
	.align	2
	.type	wcstoumax,%function
.section bb6_0
wcstoumax:                              @ @wcstoumax
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB6_1
.section bb6_1
.LBB6_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mvn	r3, #0
	str	r3, [sp]
	b	.LBB6_2
.section bb6_2
.LBB6_2:                                @ %entry
	str	r3, [sp, #4]
	bl	wcstox
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp6:
	.size	wcstoumax, .Ltmp6-wcstoumax
	.cantunwind
	.fnend

	.align	2
	.type	do_read,%function
.section bb7_0
do_read:                                @ @do_read
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB7_1
.section bb7_1
.LBB7_1:                                @ %entry
	ldr	r4, [r0, #84]
	ldr	r5, [r0, #48]
	b	.LBB7_2
.section bb7_2
.LBB7_2:                                @ %entry
	ldr	lr, .LCPI7_0
	mov	r12, #0
	ldr	r3, [r4]
	cmp	r3, #0
	b	.LBB7_3
.LCPI7_0:
	.long	.L.str
.section bb7_3
.LBB7_3:                                @ %entry
	mov	r3, #0
	movne	lr, r4
	cmp	r5, #0
	beq	.LBB7_8
	b	.LBB7_4
.section bb7_4
.LBB7_4:
	mov	r3, #0
	b	.LBB7_5
.section bb7_5
.LBB7_5:                                @ %land.rhs
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r4, [lr, r3, lsl #2]
	cmp	r4, #0
	beq	.LBB7_8
	b	.LBB7_6
.section bb7_6
.LBB7_6:                                @ %for.body
                                        @   in Loop: Header=BB7_5 Depth=1
	ldr	r5, [r0, #44]
	cmp	r4, #128
	movhs	r4, #64
	strb	r4, [r5, r3]
	b	.LBB7_7
.section bb7_7
.LBB7_7:                                @ %for.body
                                        @   in Loop: Header=BB7_5 Depth=1
	add	r3, r3, #1
	ldr	r4, [r0, #48]
	cmp	r3, r4
	blo	.LBB7_5
	b	.LBB7_8
.section bb7_8
.LBB7_8:                                @ %for.end
	ldr	r4, [r0, #44]
	add	r5, lr, r3, lsl #2
	cmp	r2, #0
	str	r5, [r0, #84]
	add	r6, r4, r3
	stmib	r0, {r4, r6}
	beq	.LBB7_10
	b	.LBB7_9
.section bb7_9
.LBB7_9:                                @ %for.end
	cmp	r3, #0
	addne	r2, r4, #1
	movne	r12, #1
	strne	r2, [r0, #4]
	ldrbne	r0, [r4]
	strbne	r0, [r1]
	b	.LBB7_10
.section bb7_10
.LBB7_10:                               @ %return
	mov	r0, r12
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp7:
	.size	do_read, .Ltmp7-do_read
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
