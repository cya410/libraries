.section tsearch_avl_text
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
	.file	"src/search/tsearch_avl.bc"
	.globl	tdelete
	.align	2
	.type	tdelete,%function
.section bb0_0
tdelete:                                @ @tdelete
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r1
	mov	r1, r0
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	add	r0, sp, #4
	ldr	r3, [r4]
	str	r3, [sp, #4]
	bl	remove
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	ldr	r1, [sp, #4]
	str	r1, [r4]
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp0:
	.size	tdelete, .Ltmp0-tdelete
	.cantunwind
	.fnend

	.align	2
	.type	remove,%function
.section bb1_0
remove:                                 @ @remove
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
	mov	r4, r0
	mov	r8, r3
	mov	r7, r2
	mov	r6, r1
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r5, #0
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LBB1_11
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %if.end
	ldr	r1, [r0]
	mov	r0, r6
	mov	lr, pc
	mov	pc, r7
	cmp	r0, #0
	beq	.LBB1_7
	b	.LBB1_5
.section bb1_5
.LBB1_5:                                @ %if.end4
	ldr	r3, [r4]
	blt	.LBB1_8
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.else
	add	r0, r3, #8
	b	.LBB1_9
.section bb1_7
.LBB1_7:                                @ %if.then2
	ldr	r5, [r4]
	ldmib	r5, {r0, r1}
	bl	movr
	str	r0, [r4]
	mov	r0, r5
	bl	free
	mov	r5, r8
	b	.LBB1_11
.section bb1_8
.LBB1_8:                                @ %if.then6
	add	r0, r3, #4
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %if.end11
	mov	r1, r6
	mov	r2, r7
	bl	remove
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB1_11
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %if.then13
	ldr	r0, [r4]
	bl	balance
	mov	r5, r6
	str	r0, [r4]
	b	.LBB1_11
.section bb1_11
.LBB1_11:                               @ %return
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp1:
	.size	remove, .Ltmp1-remove
	.cantunwind
	.fnend

	.globl	tfind
	.align	2
	.type	tfind,%function
.section bb2_0
tfind:                                  @ @tfind
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.section bb2_2
.LBB2_2:                                @ %entry
	ldr	r7, [r1]
	mov	r5, r2
	mov	r6, r0
	mov	r4, #0
	b	.LBB2_4
.section bb2_3
.LBB2_3:                                @ %if.end3.i
                                        @   in Loop: Header=BB2_4 Depth=1
	add	r0, r7, #8
	addlt	r0, r7, #4
	ldr	r7, [r0]
	b	.LBB2_4
.section bb2_4
.LBB2_4:                                @ %entry
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r7, #0
	beq	.LBB2_7
	b	.LBB2_5
.section bb2_5
.LBB2_5:                                @ %if.end.i
                                        @   in Loop: Header=BB2_4 Depth=1
	ldr	r1, [r7]
	mov	r0, r6
	mov	lr, pc
	mov	pc, r5
	cmp	r0, #0
	bne	.LBB2_3
	b	.LBB2_6
.section bb2_6
.LBB2_6:
	mov	r4, r7
	b	.LBB2_7
.section bb2_7
.LBB2_7:                                @ %find.exit
	mov	r0, r4
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	tfind, .Ltmp2-tfind
	.cantunwind
	.fnend

	.globl	tsearch
	.align	2
	.type	tsearch,%function
.section bb3_0
tsearch:                                @ @tsearch
	.fnstart
.Leh_func_begin3:
.LBB3_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB3_1
.section bb3_1
.LBB3_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r1
	mov	r1, r0
	b	.LBB3_2
.section bb3_2
.LBB3_2:                                @ %entry
	mov	r0, #0
	add	r3, sp, #4
	str	r0, [sp, #4]
	ldr	r0, [r4]
	b	.LBB3_3
.section bb3_3
.LBB3_3:                                @ %entry
	str	r0, [sp]
	mov	r0, sp
	bl	insert
	ldr	r1, [sp]
	str	r1, [r4]
	add	sp, sp, #8
	pop	{r4, lr}
	mov	pc, lr
.Ltmp3:
	.size	tsearch, .Ltmp3-tsearch
	.cantunwind
	.fnend

	.align	2
	.type	insert,%function
.section bb4_0
insert:                                 @ @insert
	.fnstart
.Leh_func_begin4:
.LBB4_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB4_1
.section bb4_1
.LBB4_1:                                @ %entry
	b	.LBB4_2
.section bb4_2
.LBB4_2:                                @ %entry
	mov	r6, r0
	mov	r8, r3
	mov	r4, r2
	mov	r7, r1
	ldr	r5, [r6]
	cmp	r5, #0
	beq	.LBB4_6
	b	.LBB4_3
.section bb4_3
.LBB4_3:                                @ %if.end3
	ldr	r1, [r5]
	mov	r0, r7
	mov	lr, pc
	mov	pc, r4
	cmp	r0, #0
	beq	.LBB4_13
	b	.LBB4_4
.section bb4_4
.LBB4_4:                                @ %if.end8
	blt	.LBB4_9
	b	.LBB4_5
.section bb4_5
.LBB4_5:                                @ %if.else
	add	r0, r5, #8
	b	.LBB4_10
.section bb4_6
.LBB4_6:                                @ %if.then
	mov	r0, #16
	bl	malloc
	mov	r5, r0
	str	r5, [r6]
	cmp	r5, #0
	beq	.LBB4_8
	b	.LBB4_7
.section bb4_7
.LBB4_7:                                @ %if.then2
	mov	r0, #0
	mov	r1, #1
	str	r7, [r5]
	str	r0, [r5, #4]
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	b	.LBB4_8
.section bb4_8
.LBB4_8:                                @ %if.end
	mov	r0, #1
	str	r0, [r8]
	b	.LBB4_13
.section bb4_9
.LBB4_9:                                @ %if.then10
	add	r0, r5, #4
	b	.LBB4_10
.section bb4_10
.LBB4_10:                               @ %if.end15
	mov	r1, r7
	mov	r2, r4
	mov	r3, r8
	bl	insert
	b	.LBB4_11
.section bb4_11
.LBB4_11:                               @ %if.end15
	mov	r5, r0
	ldr	r0, [r8]
	cmp	r0, #0
	beq	.LBB4_13
	b	.LBB4_12
.section bb4_12
.LBB4_12:                               @ %if.then17
	ldr	r0, [r6]
	bl	balance
	str	r0, [r6]
	b	.LBB4_13
.section bb4_13
.LBB4_13:                               @ %return
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp4:
	.size	insert, .Ltmp4-insert
	.cantunwind
	.fnend

	.globl	twalk
	.align	2
	.type	twalk,%function
.section bb5_0
twalk:                                  @ @twalk
	.fnstart
.Leh_func_begin5:
.LBB5_0:                                @ %entry
	mov	r2, #0
	b	walk
.Ltmp5:
	.size	twalk, .Ltmp5-twalk
	.cantunwind
	.fnend

	.align	2
	.type	walk,%function
.section bb6_0
walk:                                   @ @walk
	.fnstart
.Leh_func_begin6:
.LBB6_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB6_1
.section bb6_1
.LBB6_1:                                @ %entry
	b	.LBB6_2
.section bb6_2
.LBB6_2:                                @ %entry
	mov	r5, r0
	mov	r4, r2
	mov	r3, r1
	cmp	r5, #0
	b	.LBB6_3
.section bb6_3
.LBB6_3:                                @ %entry
	popeq	{r4, r5, r6, r7, r11, lr}
	moveq	pc, lr
	ldr	r0, [r5, #4]
	cmp	r0, #0
	bne	.LBB6_5
	b	.LBB6_4
.section bb6_4
.LBB6_4:                                @ %land.lhs.true
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.LBB6_11
	b	.LBB6_5
.section bb6_5
.LBB6_5:                                @ %if.else
	mov	r7, r3
	mov	r0, r5
	mov	r1, #0
	mov	r2, r4
	b	.LBB6_6
.section bb6_6
.LBB6_6:                                @ %if.else
                                        @ kill: R3<def> R7<kill>
	mov	lr, pc
	mov	pc, r3
	ldr	r0, [r5, #4]
	add	r6, r4, #1
	b	.LBB6_7
.section bb6_7
.LBB6_7:                                @ %if.else
	mov	r1, r7
	mov	r2, r6
	bl	walk
	mov	r0, r5
	b	.LBB6_8
.section bb6_8
.LBB6_8:                                @ %if.else
	mov	r1, #1
	mov	r2, r4
	mov	r3, r7
	mov	lr, pc
	mov	pc, r3
	b	.LBB6_9
.section bb6_9
.LBB6_9:                                @ %if.else
	ldr	r0, [r5, #8]
	mov	r1, r7
	mov	r2, r6
	bl	walk
	b	.LBB6_10
.section bb6_10
.LBB6_10:                               @ %if.else
	mov	r0, r5
	mov	r1, #2
	mov	r2, r4
	mov	r3, r7
	pop	{r4, r5, r6, r7, r11, lr}
	bx	r3
.section bb6_11
.LBB6_11:                               @ %if.then3
	mov	r0, r5
	mov	r1, #3
	mov	r2, r4
	pop	{r4, r5, r6, r7, r11, lr}
	bx	r3
.Ltmp6:
	.size	walk, .Ltmp6-walk
	.cantunwind
	.fnend

	.align	2
	.type	movr,%function
.section bb7_0
movr:                                   @ @movr
	.fnstart
.Leh_func_begin7:
.LBB7_0:                                @ %entry
	.save	{r4, lr}
	push	{r4, lr}
	b	.LBB7_1
.section bb7_1
.LBB7_1:                                @ %entry
	mov	r4, r0
	cmp	r4, #0
	moveq	r0, r1
	popeq	{r4, lr}
	b	.LBB7_2
.section bb7_2
.LBB7_2:                                @ %entry
	moveq	pc, lr
	ldr	r0, [r4, #8]
	bl	movr
	str	r0, [r4, #8]
	mov	r0, r4
	pop	{r4, lr}
	b	balance
.Ltmp7:
	.size	movr, .Ltmp7-movr
	.cantunwind
	.fnend

	.align	2
	.type	balance,%function
.section bb8_0
balance:                                @ @balance
	.fnstart
.Leh_func_begin8:
.LBB8_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB8_1
.section bb8_1
.LBB8_1:                                @ %entry
	mov	r4, r0
	mov	r3, #0
	b	.LBB8_2
.section bb8_2
.LBB8_2:                                @ %entry
	mov	r2, #0
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #8]
	cmp	r0, #0
	b	.LBB8_3
.section bb8_3
.LBB8_3:                                @ %entry
	ldrne	r3, [r0, #12]
	cmp	r1, #0
	ldrne	r2, [r1, #12]
	sub	r2, r3, r2
	cmn	r2, #2
	bgt	.LBB8_8
	b	.LBB8_4
.section bb8_4
.LBB8_4:                                @ %if.then
	ldr	r5, [r1, #4]
	ldr	r3, [r1, #8]
	mov	r2, #0
	mov	r0, #0
	b	.LBB8_5
.section bb8_5
.LBB8_5:                                @ %if.then
	cmp	r5, #0
	ldrne	r2, [r5, #12]
	cmp	r3, #0
	ldrne	r0, [r3, #12]
	cmp	r2, r0
	ble	.LBB8_13
	b	.LBB8_6
.section bb8_6
.LBB8_6:                                @ %if.then3
	ldr	r0, [r5, #8]
	str	r0, [r1, #4]
	mov	r0, r1
	str	r1, [r5, #8]
	b	.LBB8_7
.section bb8_7
.LBB8_7:                                @ %if.then3
	bl	updateheight
	mov	r0, r5
	bl	updateheight
	str	r5, [r4, #8]
	ldr	r0, [r5, #4]
	b	.LBB8_14
.section bb8_8
.LBB8_8:                                @ %if.else
	cmp	r2, #2
	blt	.LBB8_15
	b	.LBB8_9
.section bb8_9
.LBB8_9:                                @ %if.then9
	ldr	r3, [r0, #4]
	ldr	r5, [r0, #8]
	mov	r2, #0
	mov	r1, #0
	b	.LBB8_10
.section bb8_10
.LBB8_10:                               @ %if.then9
	cmp	r3, #0
	ldrne	r2, [r3, #12]
	cmp	r5, #0
	ldrne	r1, [r5, #12]
	cmp	r2, r1
	bge	.LBB8_16
	b	.LBB8_11
.section bb8_11
.LBB8_11:                               @ %if.then12
	ldr	r1, [r5, #4]
	str	r1, [r0, #8]
	str	r0, [r5, #4]
	bl	updateheight
	b	.LBB8_12
.section bb8_12
.LBB8_12:                               @ %if.then12
	mov	r0, r5
	bl	updateheight
	str	r5, [r4, #4]
	ldr	r1, [r5, #8]
	b	.LBB8_17
.section bb8_13
.LBB8_13:
	mov	r0, r5
	mov	r5, r1
	b	.LBB8_14
.section bb8_14
.LBB8_14:                               @ %if.end
	str	r0, [r4, #8]
	str	r4, [r5, #4]
	b	.LBB8_18
.section bb8_15
.LBB8_15:                               @ %if.end19
	mov	r0, r4
	bl	updateheight
	mov	r5, r4
	b	.LBB8_19
.section bb8_16
.LBB8_16:
	mov	r1, r5
	mov	r5, r0
	b	.LBB8_17
.section bb8_17
.LBB8_17:                               @ %if.end16
	str	r1, [r4, #4]
	str	r4, [r5, #8]
	b	.LBB8_18
.section bb8_18
.LBB8_18:                               @ %return
	mov	r0, r4
	bl	updateheight
	mov	r0, r5
	bl	updateheight
	b	.LBB8_19
.section bb8_19
.LBB8_19:                               @ %return
	mov	r0, r5
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp8:
	.size	balance, .Ltmp8-balance
	.cantunwind
	.fnend

	.align	2
	.type	updateheight,%function
.section bb9_0
updateheight:                           @ @updateheight
	.fnstart
.Leh_func_begin9:
.LBB9_0:                                @ %entry
	mov	r1, #0
	str	r1, [r0, #12]
	ldr	r2, [r0, #4]
	cmp	r2, #0
	beq	.LBB9_2
	b	.LBB9_1
.section bb9_1
.LBB9_1:                                @ %land.lhs.true
	ldr	r2, [r2, #12]
	cmp	r2, #1
	movge	r1, r2
	strge	r2, [r0, #12]
	b	.LBB9_2
.section bb9_2
.LBB9_2:                                @ %if.end
	ldr	r2, [r0, #8]
	cmp	r2, #0
	beq	.LBB9_4
	b	.LBB9_3
.section bb9_3
.LBB9_3:                                @ %land.lhs.true8
	ldr	r2, [r2, #12]
	cmp	r2, r1
	movgt	r1, r2
	strgt	r2, [r0, #12]
	b	.LBB9_4
.section bb9_4
.LBB9_4:                                @ %if.end17
	add	r1, r1, #1
	str	r1, [r0, #12]
	mov	pc, lr
.Ltmp9:
	.size	updateheight, .Ltmp9-updateheight
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
