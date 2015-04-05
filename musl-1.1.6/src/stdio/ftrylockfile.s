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
	.file	"src/stdio/ftrylockfile.bc"
	.globl	__do_orphaned_stdio_locks
	.align	2
	.type	__do_orphaned_stdio_locks,%function
__do_orphaned_stdio_locks:              @ @__do_orphaned_stdio_locks
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	@APP
	bl	__a_gettp
	mov	r1, r0
	@NO_APP
	ldr	r0, [r1, #4]
	cmp	r0, #0
	beq	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	mov	r1, #1073741824
	b	.LBB0_3
.LBB0_3:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@APP
	bl	__a_barrier
	@NO_APP
	str	r1, [r0, #76]
	@APP
	bl	__a_barrier
	@NO_APP
	ldr	r0, [r0, #132]
	cmp	r0, #0
	bne	.LBB0_3
	b	.LBB0_4
.LBB0_4:                                @ %for.end
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__do_orphaned_stdio_locks, .Ltmp0-__do_orphaned_stdio_locks
	.cantunwind
	.fnend

	.globl	__unlist_locked_file
	.align	2
	.type	__unlist_locked_file,%function
__unlist_locked_file:                   @ @__unlist_locked_file
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	ldr	r1, [r0, #68]
	cmp	r1, #0
	beq	.LBB1_4
	b	.LBB1_1
.LBB1_1:                                @ %if.then
	ldr	r1, [r0, #132]
	cmp	r1, #0
	ldrne	r2, [r0, #128]
	strne	r2, [r1, #128]
	ldr	r0, [r0, #128]
	cmp	r0, #0
	beq	.LBB1_3
	b	.LBB1_2
.LBB1_2:                                @ %if.then7
	str	r1, [r0, #132]
	b	.LBB1_4
.LBB1_3:                                @ %if.else
	@APP
	bl	__a_gettp
	mov	r2, r0
	@NO_APP
	str	r1, [r2, #4]
	b	.LBB1_4
.LBB1_4:                                @ %if.end13
	pop	{r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__unlist_locked_file, .Ltmp1-__unlist_locked_file
	.cantunwind
	.fnend

	.globl	ftrylockfile
	.align	2
	.type	ftrylockfile,%function
ftrylockfile:                           @ @ftrylockfile
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	b	.LBB2_2
.LBB2_2:                                @ %entry
	mov	r4, r0
	@APP
	bl	__a_gettp
	mov	r8, r0
	@NO_APP
	mov	r5, r4
	ldr	r1, [r5, #76]!
	ldr	r6, [r8, #-160]
	cmp	r1, r6
	bne	.LBB2_5
	b	.LBB2_3
.LBB2_3:                                @ %if.then
	ldr	r1, [r4, #68]
	mvn	r0, #0
	cmn	r1, #-2147483647
	beq	.LBB2_13
	b	.LBB2_4
.LBB2_4:                                @ %if.end
	add	r0, r1, #1
	str	r0, [r4, #68]
	b	.LBB2_12
.LBB2_5:                                @ %if.end5
	cmp	r1, #0
	blt	.LBB2_7
	b	.LBB2_6
.LBB2_6:                                @ %if.end10
	mvn	r0, #0
	bne	.LBB2_13
	b	.LBB2_8
.LBB2_7:                                @ %if.end10.thread
	mov	r0, #0
	str	r0, [r5]
	b	.LBB2_8
.LBB2_8:                                @ %for.cond.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #0
	mov	r1, r6
	mov	r2, r5
	mov	r7, #0
	bl	__a_cas
	cmp	r0, #0
	beq	.LBB2_10
	b	.LBB2_9
.LBB2_9:                                @ %if.end.i
                                        @   in Loop: Header=BB2_8 Depth=1
	ldr	r1, [r5]
	mvn	r0, #0
	cmp	r1, #0
	beq	.LBB2_8
	b	.LBB2_13
.LBB2_10:                               @ %if.end16
	mov	r0, #1
	str	r0, [r4, #68]
	str	r7, [r4, #128]
	ldr	r0, [r8, #4]
	b	.LBB2_11
.LBB2_11:                               @ %if.end16
	cmp	r0, #0
	str	r0, [r4, #132]
	strne	r4, [r0, #128]
	str	r4, [r8, #4]
	b	.LBB2_12
.LBB2_12:                               @ %return
	mov	r0, #0
	b	.LBB2_13
.LBB2_13:                               @ %return
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp2:
	.size	ftrylockfile, .Ltmp2-ftrylockfile
	.cantunwind
	.fnend

	.hidden	__a_cas

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
