.section sigaction_text
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
	.file	"src/signal/sigaction.bc"
	.globl	__get_handler_set
	.align	2
	.type	__get_handler_set,%function
.section bb0_0
__get_handler_set:                      @ @__get_handler_set
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	ldr	r1, .LCPI0_0
	mov	r2, #8
	add	r1, r1, #4
	b	memcpy
.LCPI0_0:
	.long	_MergedGlobals
.Ltmp0:
	.size	__get_handler_set, .Ltmp0-__get_handler_set
	.cantunwind
	.fnend

	.globl	__libc_sigaction
	.align	2
	.type	__libc_sigaction,%function
.section bb1_0
__libc_sigaction:                       @ @__libc_sigaction
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB1_1
.section bb1_1
.LBB1_1:                                @ %entry
	b	.LBB1_2
.section bb1_2
.LBB1_2:                                @ %entry
	.pad	#48
	sub	sp, sp, #48
	b	.LBB1_3
.section bb1_3
.LBB1_3:                                @ %entry
	mov	r5, r0
	mov	r9, r2
	mov	r6, r1
	cmp	r5, #65
	blo	.LBB1_5
	b	.LBB1_4
.section bb1_4
.LBB1_4:                                @ %if.then
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	b	.LBB1_24
.section bb1_5
.LBB1_5:                                @ %if.end
	cmp	r6, #0
	beq	.LBB1_17
	b	.LBB1_6
.section bb1_6
.LBB1_6:                                @ %if.then1
	ldr	r0, [r6]
	cmp	r0, #2
	blo	.LBB1_14
	b	.LBB1_7
.section bb1_7
.LBB1_7:                                @ %if.then3
	sub	r0, r5, #1
	ldr	r8, .LCPI1_4
	mov	r2, #1
	and	r1, r0, #31
	b	.LBB1_8
.LCPI1_4:
	.long	_MergedGlobals
.section bb1_8
.LBB1_8:                                @ %if.then3
	lsl	r4, r2, r1
	mvn	r1, #-536870909
	and	r0, r1, r0, lsr #3
	add	r0, r8, r0
	add	r7, r0, #4
	b	.LBB1_9
.section bb1_9
.LBB1_9:                                @ %do.body.i.i
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r7]
	mov	r2, r7
	orr	r1, r0, r4
	bl	__a_cas
	cmp	r0, #0
	bne	.LBB1_9
	b	.LBB1_10
.section bb1_10
.LBB1_10:                               @ %a_or_l.exit
	ldr	r0, .LCPI1_5
	ldr	r0, [r0, #8]
	cmp	r0, #0
	ldrbeq	r0, [r8]
	cmpeq	r0, #0
	bne	.LBB1_14
	b	.LBB1_11
.LCPI1_5:
	.long	__libc
.section bb1_11
.LBB1_11:                               @ %if.then7
	mov	r0, #0
	mov	r1, sp
	mov	r7, #175
	mov	r2, #0
	b	.LBB1_12
.section bb1_12
.LBB1_12:                               @ %if.then7
	mov	r3, #8
	mov	r4, #1
	str	r0, [sp]
	mov	r0, #3
	b	.LBB1_13
.section bb1_13
.LBB1_13:                               @ %if.then7
	str	r0, [sp, #4]
	mov	r0, #1
	@APP
	svc	#0
	@NO_APP
	strb	r4, [r8]
	b	.LBB1_14
.section bb1_14
.LBB1_14:                               @ %if.end10
	ldr	r0, [r6]
	ldr	r2, .LCPI1_7
	str	r0, [sp, #28]
	ldr	r0, [r6, #132]
	b	.LBB1_15
.LCPI1_7:
	.long	__restore
.section bb1_15
.LBB1_15:                               @ %if.end10
	orr	r1, r0, #67108864
	tst	r0, #4
	add	r0, sp, #28
	str	r1, [sp, #32]
	b	.LBB1_16
.section bb1_16
.LBB1_16:                               @ %if.end10
	ldr	r1, .LCPI1_6
	add	r0, r0, #12
	movne	r2, r1
	add	r1, r6, #4
	str	r2, [sp, #36]
	mov	r2, #8
	bl	memcpy
	b	.LBB1_17
.LCPI1_6:
	.long	__restore_rt
.section bb1_17
.LBB1_17:                               @ %if.end16
	add	r1, sp, #28
	cmp	r6, #0
	mov	r2, r9
	mov	r7, #174
	b	.LBB1_18
.section bb1_18
.LBB1_18:                               @ %if.end16
	mov	r0, r5
	mov	r3, #8
	moveq	r1, r6
	add	r6, sp, #8
	b	.LBB1_19
.section bb1_19
.LBB1_19:                               @ %if.end16
	cmp	r9, #0
	movne	r2, r6
	@APP
	svc	#0
	@NO_APP
	bl	__syscall_ret
	b	.LBB1_20
.section bb1_20
.LBB1_20:                               @ %if.end16
	mov	r1, r0
	mov	r2, #0
	cmp	r1, #0
                                        @ kill: R0<def> R1<kill>
	b	.LBB1_21
.section bb1_21
.LBB1_21:                               @ %if.end16
	mvnne	r0, #0
	cmp	r9, #0
	moveq	r2, #1
	cmp	r1, #0
	cmpeq	r2, #0
	bne	.LBB1_24
	b	.LBB1_22
.section bb1_22
.LBB1_22:                               @ %if.then30
	ldr	r0, [sp, #8]
	add	r1, r6, #12
	mov	r2, #8
	str	r0, [r9]
	b	.LBB1_23
.section bb1_23
.LBB1_23:                               @ %if.then30
	ldr	r0, [sp, #12]
	str	r0, [r9, #132]
	add	r0, r9, #4
	bl	memcpy
	mov	r0, #0
	b	.LBB1_24
.section bb1_24
.LBB1_24:                               @ %return
	add	sp, sp, #48
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	__libc_sigaction, .Ltmp1-__libc_sigaction
	.cantunwind
	.fnend

	.globl	__sigaction
	.align	2
	.type	__sigaction,%function
.section bb2_0
__sigaction:                            @ @__sigaction
	.fnstart
.Leh_func_begin2:
.LBB2_0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	sub	r3, r0, #32
	cmp	r3, #3
	bhs	.LBB2_2
	b	.LBB2_1
.section bb2_1
.LBB2_1:                                @ %return
	bl	__errno_location
	mov	r1, #22
	str	r1, [r0]
	mvn	r0, #0
	pop	{r11, lr}
	mov	pc, lr
.section bb2_2
.LBB2_2:                                @ %if.end
	pop	{r11, lr}
	b	__libc_sigaction
.Ltmp2:
	.size	__sigaction, .Ltmp2-__sigaction
	.cantunwind
	.fnend

	.hidden	__libc
	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,12,4
	.hidden	__syscall_ret
	.hidden	__a_cas

	.weak	sigaction
sigaction = __sigaction
	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
