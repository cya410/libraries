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
	.file	"src/complex/ctanhf.bc"
	.globl	ctanhf
	.align	2
	.type	ctanhf,%function
ctanhf:                                 @ @ctanhf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r5, r1
	mov	r4, r0
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r2
	bic	r0, r5, #-2147483648
	lsr	r1, r0, #23
	cmp	r1, #255
	blo	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                @ %if.then
	ldr	r0, .LCPI0_0
	tst	r5, r0
	beq	.LBB0_17
	b	.LBB0_5
.LCPI0_0:
	.long	8388607                 @ 0x7fffff
.LBB0_5:                                @ %if.then4
	mov	r0, r6
	mov	r1, #0
	str	r5, [r4]
	bl	__aeabi_fcmpeq
	b	.LBB0_6
.LBB0_6:                                @ %if.then4
	mov	r7, r0
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fmul
	cmp	r7, #0
	movne	r0, r6
	b	.LBB0_31
.LBB0_7:                                @ %cond.true46
	mov	r1, #1065353216
	orr	r1, r1, #1073741824
	and	r1, r6, r1
	lsr	r1, r1, #23
	cmp	r1, #255
	bhs	.LBB0_16
	b	.LBB0_8
.LBB0_8:                                @ %if.end73
	mov	r1, #19922944
	orr	r1, r1, #1073741824
	cmp	r0, r1
	blo	.LBB0_21
	b	.LBB0_9
.LBB0_9:                                @ %if.then76
	mov	r0, r5
	bl	fabsf
	eor	r0, r0, #-2147483648
	bl	expf
	b	.LBB0_10
.LBB0_10:                               @ %if.then76
	mov	r8, r0
	mov	r0, #1065353216
	mov	r1, r5
	bl	copysignf
	b	.LBB0_11
.LBB0_11:                               @ %if.then76
	mov	r5, r0
	mov	r0, r6
	bl	sinf
	mov	r7, r0
	b	.LBB0_12
.LBB0_12:                               @ %if.then76
	mov	r0, r6
	bl	cosf
	mov	r1, #8388608
	mov	r6, r0
	b	.LBB0_13
.LBB0_13:                               @ %if.then76
	mov	r0, r7
	str	r5, [r4]
	orr	r1, r1, #1073741824
	bl	__aeabi_fmul
	b	.LBB0_14
.LBB0_14:                               @ %if.then76
	mov	r1, r6
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r8
	b	.LBB0_15
.LBB0_15:                               @ %if.then76
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fmul
	b	.LBB0_31
.LBB0_16:                               @ %if.then63
	mov	r0, r6
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r1, r4
	str	r0, [r4]
	mov	r5, r0
	str	r0, [r1, #4]!
	b	.LBB0_32
.LBB0_17:                               @ %do.body11
	mov	r1, #1065353216
	add	r5, r5, #-1073741824
	bic	r0, r6, #-2147483648
	orr	r1, r1, #1073741824
	cmp	r0, r1
	beq	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               @ %cond.false35
	mov	r0, r6
	bl	sinf
	mov	r7, r0
	mov	r0, r6
	b	.LBB0_19
.LBB0_19:                               @ %cond.false35
	bl	cosf
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul
	mov	r6, r0
	b	.LBB0_20
.LBB0_20:                               @ %cond.end39
	mov	r0, #0
	mov	r1, r6
	bl	copysignf
	str	r5, [r4]
	b	.LBB0_31
.LBB0_21:                               @ %if.end94
	mov	r0, r6
	bl	tanf
	mov	r8, r0
	mov	r1, r8
	b	.LBB0_22
.LBB0_22:                               @ %if.end94
                                        @ kill: R0<def> R8<kill>
	bl	__aeabi_fmul
	mov	r1, #1065353216
	bl	__aeabi_fadd
	b	.LBB0_23
.LBB0_23:                               @ %if.end94
	mov	r7, r0
	mov	r0, r5
	bl	sinhf
	mov	r5, r0
	b	.LBB0_24
.LBB0_24:                               @ %if.end94
	mov	r1, r5
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	mov	r1, #1065353216
	b	.LBB0_25
.LBB0_25:                               @ %if.end94
	bl	__aeabi_fadd
	bl	sqrtf
	mov	r9, r0
	mov	r0, r5
	b	.LBB0_26
.LBB0_26:                               @ %if.end94
	mov	r1, r7
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_27
.LBB0_27:                               @ %if.end94
	bl	__aeabi_fmul
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r6, r0
	b	.LBB0_28
.LBB0_28:                               @ %if.end94
	mov	r0, r7
	mov	r1, r9
	bl	__aeabi_fmul
	mov	r1, r0
	b	.LBB0_29
.LBB0_29:                               @ %if.end94
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r6
	bl	__aeabi_fdiv
	b	.LBB0_30
.LBB0_30:                               @ %if.end94
	mov	r5, r0
	mov	r0, r8
	mov	r1, r6
	str	r5, [r4]
	bl	__aeabi_fdiv
	b	.LBB0_31
.LBB0_31:                               @ %return
	mov	r1, r4
	str	r0, [r1, #4]!
	b	.LBB0_32
.LBB0_32:                               @ %return
	str	r5, [r4]
	str	r0, [r1]
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	ctanhf, .Ltmp0-ctanhf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
