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
	.file	"src/passwd/getpw_r.bc"
	.globl	getpwnam_r
	.align	2
	.type	getpwnam_r,%function
getpwnam_r:                             @ @getpwnam_r
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, r2
	mov	r2, r1
	b	.LBB0_2
.LBB0_2:                                @ %entry
	ldr	r1, [sp, #16]
	str	r3, [sp]
	mov	r3, r12
	str	r1, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r1, #0
	bl	getpw_r
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	getpwnam_r, .Ltmp0-getpwnam_r
	.cantunwind
	.fnend

	.align	2
	.type	getpw_r,%function
getpw_r:                                @ @getpw_r
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.LBB1_2:                                @ %entry
	.pad	#12
	sub	sp, sp, #12
	b	.LBB1_3
.LBB1_3:                                @ %entry
	mov	r10, #0
	mov	r9, r1
	mov	r5, r0
	b	.LBB1_4
.LBB1_4:                                @ %entry
	mov	r1, sp
	mov	r0, #1
	mov	r8, r3
	mov	r4, r2
	b	.LBB1_5
.LBB1_5:                                @ %entry
	str	r10, [sp, #8]
	str	r10, [sp, #4]
	bl	pthread_setcancelstate
	ldr	r0, .LCPI1_2
	b	.LBB1_6
.LCPI1_2:
	.long	.L.str
.LBB1_6:                                @ %entry
	ldr	r1, .LCPI1_3
	bl	fopen
	mov	r7, r0
	cmp	r7, #0
	beq	.LBB1_14
	b	.LBB1_7
.LCPI1_3:
	.long	.L.str1
.LBB1_7:                                @ %if.end
	ldr	r0, [sp, #52]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r1, r4
	b	.LBB1_8
.LBB1_8:                                @ %if.end
	str	r10, [r0]
	mov	r0, r7
	bl	__getpwent_a
	cmp	r0, #0
	beq	.LBB1_22
	b	.LBB1_9
.LBB1_9:                                @ %while.body.lr.ph
	add	r11, sp, #8
	add	r6, sp, #4
	b	.LBB1_10
.LBB1_10:                               @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	cmp	r5, #0
	beq	.LBB1_12
	b	.LBB1_11
.LBB1_11:                               @ %land.lhs.true
                                        @   in Loop: Header=BB1_10 Depth=1
	ldr	r1, [r4]
	mov	r0, r5
	bl	strcmp
	cmp	r0, #0
	bne	.LBB1_13
	b	.LBB1_15
.LBB1_12:                               @ %land.lhs.true9
                                        @   in Loop: Header=BB1_10 Depth=1
	ldr	r0, [r4, #8]
	cmp	r0, r9
	beq	.LBB1_15
	b	.LBB1_13
.LBB1_13:                               @ %while.cond.backedge
                                        @   in Loop: Header=BB1_10 Depth=1
	mov	r0, r7
	mov	r1, r4
	mov	r2, r11
	mov	r3, r6
	bl	__getpwent_a
	cmp	r0, #0
	bne	.LBB1_10
	b	.LBB1_22
.LBB1_14:                               @ %if.then
	bl	__errno_location
	ldr	r10, [r0]
	b	.LBB1_23
.LBB1_15:                               @ %if.then10
	ldr	r2, [sp, #4]
	ldr	r0, [sp, #48]
	mov	r10, #34
	cmp	r2, r0
	bhi	.LBB1_22
	b	.LBB1_16
.LBB1_16:                               @ %if.end13
	ldr	r0, [sp, #52]
	str	r4, [r0]
	mov	r0, r8
	ldr	r1, [sp, #8]
	b	.LBB1_17
.LBB1_17:                               @ %if.end13
	bl	memcpy
	ldr	r0, [r4]
	ldr	r1, [sp, #8]
	mov	r10, #0
	b	.LBB1_18
.LBB1_18:                               @ %if.end13
	sub	r0, r0, r1
	add	r0, r8, r0
	str	r0, [r4]
	ldr	r0, [r4, #4]
	b	.LBB1_19
.LBB1_19:                               @ %if.end13
	sub	r0, r0, r1
	add	r0, r8, r0
	str	r0, [r4, #4]
	ldr	r0, [r4, #16]
	b	.LBB1_20
.LBB1_20:                               @ %if.end13
	sub	r0, r0, r1
	add	r0, r8, r0
	str	r0, [r4, #16]
	ldr	r0, [r4, #20]
	b	.LBB1_21
.LBB1_21:                               @ %if.end13
	sub	r0, r0, r1
	add	r0, r8, r0
	str	r0, [r4, #20]
	ldr	r0, [r4, #24]
	sub	r0, r0, r1
	add	r0, r8, r0
	str	r0, [r4, #24]
	b	.LBB1_22
.LBB1_22:                               @ %while.end
	ldr	r0, [sp, #8]
	bl	free
	mov	r0, r7
	bl	fclose
	b	.LBB1_23
.LBB1_23:                               @ %done
	ldr	r0, [sp]
	mov	r1, #0
	bl	pthread_setcancelstate
	mov	r0, r10
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	getpw_r, .Ltmp1-getpw_r
	.cantunwind
	.fnend

	.globl	getpwuid_r
	.align	2
	.type	getpwuid_r,%function
getpwuid_r:                             @ @getpwuid_r
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	b	.LBB2_1
.LBB2_1:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r12, r2
	mov	r2, r1
	b	.LBB2_2
.LBB2_2:                                @ %entry
	mov	r1, r0
	ldr	r0, [sp, #16]
	str	r3, [sp]
	mov	r3, r12
	b	.LBB2_3
.LBB2_3:                                @ %entry
	str	r0, [sp, #4]
	mov	r0, #0
	bl	getpw_r
	add	sp, sp, #8
	pop	{r11, lr}
	mov	pc, lr
.Ltmp2:
	.size	getpwuid_r, .Ltmp2-getpwuid_r
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"/etc/passwd"
	.size	.L.str, 12

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"rbe"
	.size	.L.str1, 4


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
