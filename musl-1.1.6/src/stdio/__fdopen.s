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
	.file	"src/stdio/__fdopen.bc"
	.globl	__fdopen
	.align	2
	.type	__fdopen,%function
__fdopen:                               @ @__fdopen
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#64
	sub	sp, sp, #64
	mov	r6, r1
	mov	r5, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	ldr	r0, .LCPI0_6
	ldrb	r1, [r6]
	bl	strchr
	cmp	r0, #0
	beq	.LBB0_14
	b	.LBB0_4
.LCPI0_6:
	.long	.L.str
.LBB0_4:                                @ %if.end
	mov	r0, #1168
	bl	malloc
	mov	r4, r0
	mov	r0, #0
	cmp	r4, #0
	beq	.LBB0_26
	b	.LBB0_5
.LBB0_5:                                @ %if.end5
	mov	r0, r4
	mov	r1, #0
	mov	r2, #136
	bl	memset
	b	.LBB0_6
.LBB0_6:                                @ %if.end5
	mov	r0, r6
	mov	r1, #43
	bl	strchr
	cmp	r0, #0
	bne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                @ %if.then9
	ldrb	r0, [r6]
	mov	r1, #4
	cmp	r0, #114
	moveq	r1, #8
	str	r1, [r4]
	b	.LBB0_8
.LBB0_8:                                @ %if.end12
	mov	r0, r6
	mov	r1, #101
	bl	strchr
	cmp	r0, #0
	beq	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                @ %if.then15
	mov	r7, #221
	mov	r0, r5
	mov	r1, #2
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_10
.LBB0_10:                               @ %if.end17
	ldrb	r0, [r6]
	cmp	r0, #97
	bne	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               @ %if.then21
	mov	r7, #221
	mov	r0, r5
	mov	r1, #3
	@APP
	svc	#0
	@NO_APP
	tst	r0, #1024
	bne	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %if.then25
	orr	r2, r0, #1024
	mov	r7, #221
	mov	r0, r5
	mov	r1, #4
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_13
.LBB0_13:                               @ %if.end27
	ldr	r0, [r4]
	orr	r0, r0, #128
	str	r0, [r4]
	b	.LBB0_16
.LBB0_14:                               @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mov	r0, #0
	b	.LBB0_26
.LBB0_15:                               @ %if.end17.if.end30_crit_edge
	ldr	r0, [r4]
	b	.LBB0_16
.LBB0_16:                               @ %if.end30
	add	r1, r4, #144
	str	r5, [r4, #60]
	tst	r0, #8
	str	r1, [r4, #44]
	b	.LBB0_17
.LBB0_17:                               @ %if.end30
	mov	r1, #1024
	str	r1, [r4, #48]
	mov	r1, #255
	strb	r1, [r4, #75]
	bne	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               @ %land.lhs.true
	mov	r1, #1
	add	r2, sp, #4
	mov	r7, #54
	mov	r0, r5
	b	.LBB0_19
.LBB0_19:                               @ %land.lhs.true
	orr	r1, r1, #21504
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	moveq	r0, #10
	strbeq	r0, [r4, #75]
	b	.LBB0_20
.LBB0_20:                               @ %if.end40
	ldr	r0, .LCPI0_7
	ldr	r6, .LCPI0_11
	str	r0, [r4, #32]
	ldr	r0, .LCPI0_8
	b	.LBB0_21
.LCPI0_7:
	.long	__stdio_read
.LCPI0_8:
	.long	__stdio_write
.LCPI0_11:
	.long	__libc
.LBB0_21:                               @ %if.end40
	add	r5, r6, #28
	str	r0, [r4, #36]
	ldr	r0, .LCPI0_9
	str	r0, [r4, #40]
	b	.LBB0_22
.LCPI0_9:
	.long	__stdio_seek
.LBB0_22:                               @ %if.end40
	ldr	r0, .LCPI0_10
	str	r0, [r4, #12]
	ldr	r0, [r6, #8]
	cmp	r0, #0
	b	.LBB0_23
.LCPI0_10:
	.long	__stdio_close
.LBB0_23:                               @ %if.end40
	mvneq	r0, #0
	streq	r0, [r4, #76]
	mov	r0, r5
	bl	__lock
	b	.LBB0_24
.LBB0_24:                               @ %if.end40
	ldr	r0, [r6, #24]
	cmp	r0, #0
	str	r0, [r4, #56]
	strne	r4, [r0, #52]
	b	.LBB0_25
.LBB0_25:                               @ %if.end40
	mov	r0, r5
	str	r4, [r6, #24]
	bl	__unlock
	mov	r0, r4
	b	.LBB0_26
.LBB0_26:                               @ %cleanup
	add	sp, sp, #64
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	__fdopen, .Ltmp0-__fdopen
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"rwa"
	.size	.L.str, 4

	.hidden	__libc
	.hidden	__lock
	.hidden	__unlock

	.weak	fdopen
fdopen = __fdopen
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
