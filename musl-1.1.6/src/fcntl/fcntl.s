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
	.file	"src/fcntl/fcntl.bc"
	.globl	fcntl
	.align	2
	.type	fcntl,%function
fcntl:                                  @ @fcntl
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	.save	{r7, lr}
	push	{r7, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	.pad	#24
	sub	sp, sp, #24
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r12, r0
	add	r0, sp, #32
	str	r3, [sp, #36]
	str	r2, [sp, #32]
	b	.LBB0_3
.LBB0_3:                                @ %entry
	cmp	r1, #4
	str	r0, [sp, #20]
	orr	r0, r0, #4
	str	r0, [sp, #20]
	b	.LBB0_4
.LBB0_4:                                @ %entry
	ldr	r3, [sp, #32]
	orreq	r3, r3, #131072
	cmp	r1, #9
	beq	.LBB0_14
	b	.LBB0_5
.LBB0_5:                                @ %entry
	mov	r0, #6
	orr	r0, r0, #1024
	cmp	r1, r0
	bne	.LBB0_16
	b	.LBB0_6
.LBB0_6:                                @ %if.then22
	mov	r1, #6
	mov	r7, #221
	mov	r0, r12
	mov	r2, r3
	b	.LBB0_7
.LBB0_7:                                @ %if.then22
	orr	r1, r1, #1024
	@APP
	svc	#0
	@NO_APP
	mov	lr, r0
	cmn	lr, #22
	bne	.LBB0_19
	b	.LBB0_8
.LBB0_8:                                @ %if.end32
	mov	r1, #6
	mov	r7, #221
	mov	r0, r12
	mov	r2, #0
	b	.LBB0_9
.LBB0_9:                                @ %if.end32
	orr	r1, r1, #1024
	@APP
	svc	#0
	@NO_APP
	cmn	r0, #22
	bne	.LBB0_25
	b	.LBB0_10
.LBB0_10:                               @ %if.end41
	mov	r7, #221
	mov	r0, r12
	mov	r1, #0
	mov	r2, r3
	b	.LBB0_11
.LBB0_11:                               @ %if.end41
	@APP
	svc	#0
	@NO_APP
	mov	r3, r0
	cmp	r3, #0
	blt	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               @ %if.then44
	mov	r7, #221
	mov	r0, r3
	mov	r1, #2
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_13
.LBB0_13:                               @ %if.end46
	mov	r0, r3
	b	.LBB0_28
.LBB0_14:                               @ %if.then9
	add	r2, sp, #12
	mov	r7, #221
	mov	r0, r12
	mov	r1, #16
	@APP
	svc	#0
	@NO_APP
	cmp	r0, #0
	bne	.LBB0_22
	b	.LBB0_15
.LBB0_15:                               @ %if.end17
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #16]
	cmp	r1, #2
	rsbeq	r0, r0, #0
	b	.LBB0_29
.LBB0_16:                               @ %entry
	cmp	r1, #14
	bne	.LBB0_24
	b	.LBB0_17
.LBB0_17:                               @ %if.then5
	mov	r0, #0
	mov	r1, r12
	mov	r2, #14
	str	r0, [sp]
	b	.LBB0_18
.LBB0_18:                               @ %if.then5
	str	r0, [sp, #4]
	str	r0, [sp, #8]
	mov	r0, #221
	bl	__syscall_cp
	b	.LBB0_28
.LBB0_19:                               @ %if.then26
	cmp	lr, #0
	blt	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               @ %if.then28
	mov	r7, #221
	mov	r0, lr
	mov	r1, #2
	mov	r2, #1
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_21
.LBB0_21:                               @ %if.end30
	mov	r0, lr
	b	.LBB0_28
.LBB0_22:                               @ %if.then9
	cmn	r0, #22
	bne	.LBB0_28
	b	.LBB0_23
.LBB0_23:                               @ %if.then12
	mov	r7, #221
	mov	r0, r12
	mov	r1, #9
	mov	r2, r3
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_29
.LBB0_24:                               @ %if.end48
	mov	r7, #221
	mov	r0, r12
	mov	r2, r3
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_28
.LBB0_25:                               @ %if.then35
	cmp	r0, #0
	blt	.LBB0_27
	b	.LBB0_26
.LBB0_26:                               @ %if.then37
	mov	r7, #6
	@APP
	svc	#0
	@NO_APP
	b	.LBB0_27
.LBB0_27:                               @ %if.end39
	mvn	r0, #21
	b	.LBB0_28
.LBB0_28:                               @ %return
	bl	__syscall_ret
	b	.LBB0_29
.LBB0_29:                               @ %return
	add	sp, sp, #24
	pop	{r7, lr}
	add	sp, sp, #8
	mov	pc, lr
.Ltmp0:
	.size	fcntl, .Ltmp0-fcntl
	.cantunwind
	.fnend

	.hidden	__syscall_ret
	.hidden	__syscall_cp

	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
