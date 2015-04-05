.section fgetwc_text
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
	.file	"src/stdio/fgetwc.bc"
	.globl	__fgetwc_unlocked
	.align	2
	.type	__fgetwc_unlocked,%function
.section bb0_0
__fgetwc_unlocked:                      @ @__fgetwc_unlocked
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	mov	r0, #0
	mvn	r5, #1
	str	r0, [sp, #12]
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	str	r0, [sp, #8]
	ldrsb	r0, [r4, #74]
	add	r1, r0, #1
	orr	r0, r1, r0
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %entry
	strb	r0, [r4, #74]
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r1, r0
	bhs	.LBB0_8
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.then
	sub	r2, r0, r1
	add	r0, sp, #4
	add	r3, sp, #8
	bl	mbrtowc
	cmn	r0, #3
	bhi	.LBB0_7
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then11
	ldr	r1, [r4, #4]
	cmp	r0, #0
	addeq	r0, r0, #1
	add	r0, r1, r0
	str	r0, [r4, #4]
	b	.LBB0_14
.section bb0_7
.LBB0_7:                                @ %if.end
	cmn	r0, #1
	beq	.LBB0_18
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	cmn	r5, #2
	bne	.LBB0_14
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %while.body
                                        @   in Loop: Header=BB0_8 Depth=1
	ldmib	r4, {r0, r1}
	cmp	r0, r1
	bhs	.LBB0_11
	b	.LBB0_10
.section bb0_10
.LBB0_10:                               @ %cond.end.thread
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r1, r0, #1
	str	r1, [r4, #4]
	ldrb	r0, [r0]
	strb	r0, [sp, #3]
	b	.LBB0_12
.section bb0_11
.LBB0_11:                               @ %cond.end
                                        @   in Loop: Header=BB0_8 Depth=1
	mov	r0, r4
	bl	__uflow
	strb	r0, [sp, #3]
	cmp	r0, #0
	blt	.LBB0_16
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %if.end39
                                        @   in Loop: Header=BB0_8 Depth=1
	add	r0, sp, #4
	add	r1, sp, #3
	add	r3, sp, #8
	mov	r2, #1
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.end39
                                        @   in Loop: Header=BB0_8 Depth=1
	bl	mbrtowc
	mov	r5, r0
	mvn	r6, #0
	cmn	r5, #1
	bne	.LBB0_8
	b	.LBB0_15
.section bb0_14
.LBB0_14:                               @ %while.end
	ldr	r6, [sp, #4]
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %return
	mov	r0, r6
	add	sp, sp, #16
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.section bb0_16
.LBB0_16:                               @ %if.then33
	add	r0, sp, #8
	bl	mbsinit
	mvn	r6, #0
	cmp	r0, #0
	bne	.LBB0_15
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then36
	bl	__errno_location
	mov	r1, #84
	str	r1, [r0]
	b	.LBB0_15
.section bb0_18
.LBB0_18:                               @ %if.then16
	ldr	r0, [r4, #4]
	mvn	r6, #0
	add	r0, r0, #1
	str	r0, [r4, #4]
	b	.LBB0_15
.Ltmp0:
	.size	__fgetwc_unlocked, .Ltmp0-__fgetwc_unlocked
	.cantunwind
	.fnend

	.globl	fgetwc
	.align	2
	.type	fgetwc,%function
.section bb1_0
fgetwc:                                 @ @fgetwc
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	mov	r4, r0
	ldr	r0, [r4, #76]
	cmp	r0, #0
	blt	.LBB1_6
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %cond.end
	mov	r0, r4
	bl	__lockfile
	mov	r6, r0
	mov	r0, r4
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %cond.end
	bl	__fgetwc_unlocked
	mov	r5, r0
	cmp	r6, #0
	beq	.LBB1_5
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %if.then
	mov	r0, r4
	bl	__unlockfile
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %if.end
	mov	r0, r5
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.section bb1_6
.LBB1_6:                                @ %cond.end.thread
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	__fgetwc_unlocked
.Ltmp1:
	.size	fgetwc, .Ltmp1-fgetwc
	.cantunwind
	.fnend

	.protected	__uflow
	.hidden	__lockfile
	.hidden	__unlockfile

	.weak	fgetwc_unlocked
fgetwc_unlocked = __fgetwc_unlocked
	.weak	getwc_unlocked
getwc_unlocked = __fgetwc_unlocked
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
