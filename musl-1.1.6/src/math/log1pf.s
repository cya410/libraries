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
	.file	"src/math/log1pf.bc"
	.globl	log1pf
	.align	2
	.type	log1pf,%function
log1pf:                                 @ @log1pf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r4, r0
	ldr	r0, .LCPI0_11
	cmp	r4, r0
	blo	.LBB0_6
	b	.LBB0_4
.LCPI0_11:
	.long	1054086096              @ 0x3ed413d0
.LBB0_4:                                @ %entry
	cmp	r4, #0
	blt	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                @ %if.else
	lsr	r0, r4, #23
	cmp	r0, #254
	bhi	.LBB0_41
	b	.LBB0_14
.LBB0_6:                                @ %if.then
	mov	r0, #1065353216
	orr	r0, r0, #-2147483648
	cmp	r4, r0
	blo	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                @ %if.then3
	mov	r1, #1065353216
	mov	r0, r4
	orr	r1, r1, #-2147483648
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	.LBB0_39
	b	.LBB0_8
.LBB0_8:
	mov	r4, #1065353216
	orr	r4, r4, #-1073741824
	b	.LBB0_41
.LBB0_9:                                @ %if.end7
	mov	r0, #1065353216
	orr	r0, r0, #1073741824
	and	r1, r4, r0
	lsr	r1, r1, #23
	cmp	r1, #102
	bhi	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               @ %if.then9
	tst	r4, r0
	bne	.LBB0_41
	b	.LBB0_11
.LBB0_11:                               @ %do.body
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	str	r0, [sp, #4]
	b	.LBB0_41
.LBB0_12:                               @ %if.end13
	ldr	r0, .LCPI0_12
	mov	r8, #0
	cmp	r4, r0
	bhs	.LBB0_14
	b	.LBB0_13
.LCPI0_12:
	.long	3197498906              @ 0xbe95f61a
.LBB0_13:
	mov	r9, #0
	b	.LBB0_22
.LBB0_14:                               @ %if.then22
	mov	r0, r4
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r7, r0
	b	.LBB0_15
.LBB0_15:                               @ %if.then22
	ldr	r0, .LCPI0_13
	mov	r8, #0
	add	r5, r7, r0
	mvn	r0, #126
	add	r6, r0, r5, lsr #23
	cmp	r6, #24
	bgt	.LBB0_20
	b	.LBB0_16
.LCPI0_13:
	.long	4913933                 @ 0x4afb0d
.LBB0_16:                               @ %if.then29
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_17
.LBB0_17:                               @ %if.then29
	mov	r0, #1065353216
	bl	__aeabi_fsub
	mov	r1, #1065353216
	mov	r8, r0
	b	.LBB0_18
.LBB0_18:                               @ %if.then29
	mov	r0, r7
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_19
.LBB0_19:                               @ %if.then29
	mov	r0, r4
	bl	__aeabi_fsub
	cmp	r6, #1
	mov	r1, r7
	movgt	r0, r8
	bl	__aeabi_fdiv
	mov	r8, r0
	b	.LBB0_20
.LBB0_20:                               @ %if.end40
	ldr	r0, .LCPI0_14
	ldr	r1, .LCPI0_15
	and	r0, r5, r0
	add	r0, r0, r1
	b	.LBB0_21
.LCPI0_14:
	.long	8388607                 @ 0x7fffff
.LCPI0_15:
	.long	1060439283              @ 0x3f3504f3
.LBB0_21:                               @ %if.end40
	mov	r1, #1065353216
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	mov	r4, r0
	mov	r0, r6
	bl	__aeabi_i2f
	mov	r9, r0
	b	.LBB0_22
.LBB0_22:                               @ %if.end46
	mov	r0, r4
	mov	r1, #1073741824
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_23
.LBB0_23:                               @ %if.end46
	mov	r0, r4
	bl	__aeabi_fdiv
	mov	r10, r0
	mov	r1, r10
	b	.LBB0_24
.LBB0_24:                               @ %if.end46
                                        @ kill: R0<def> R10<kill>
	bl	__aeabi_fmul
	mov	r5, r0
	mov	r1, r5
	b	.LBB0_25
.LBB0_25:                               @ %if.end46
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_16
	mov	r6, r0
	b	.LBB0_26
.LCPI0_16:
	.long	1048092198              @ 0x3e789e26
.LBB0_26:                               @ %if.end46
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_17
	bl	__aeabi_fadd
	b	.LBB0_27
.LCPI0_17:
	.long	1053609491              @ 0x3eccce13
.LBB0_27:                               @ %if.end46
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_18
	b	.LBB0_28
.LCPI0_18:
	.long	1049749998              @ 0x3e91e9ee
.LBB0_28:                               @ %if.end46
	mov	r7, r0
	mov	r0, r6
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_19
	b	.LBB0_29
.LCPI0_19:
	.long	1059760810              @ 0x3f2aaaaa
.LBB0_29:                               @ %if.end46
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_30
.LBB0_30:                               @ %if.end46
	mov	r1, r7
	bl	__aeabi_fadd
	mov	r6, r0
	mov	r0, r4
	b	.LBB0_31
.LBB0_31:                               @ %if.end46
	mov	r1, #1056964608
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r4
	b	.LBB0_32
.LBB0_32:                               @ %if.end46
	bl	__aeabi_fmul
	mov	r5, r0
	mov	r1, r6
                                        @ kill: R0<def> R5<kill>
	b	.LBB0_33
.LBB0_33:                               @ %if.end46
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fmul
	b	.LBB0_34
.LBB0_34:                               @ %if.end46
	ldr	r1, .LCPI0_20
	mov	r6, r0
	mov	r0, r9
	bl	__aeabi_fmul
	b	.LBB0_35
.LCPI0_20:
	.long	924317649               @ 0x3717f7d1
.LBB0_35:                               @ %if.end46
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fadd
	mov	r1, r6
	b	.LBB0_36
.LBB0_36:                               @ %if.end46
	bl	__aeabi_fadd
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_37
.LBB0_37:                               @ %if.end46
	mov	r0, r4
	bl	__aeabi_fadd
	ldr	r1, .LCPI0_21
	mov	r4, r0
	b	.LBB0_38
.LCPI0_21:
	.long	1060204928              @ 0x3f317180
.LBB0_38:                               @ %if.end46
	mov	r0, r9
	bl	__aeabi_fmul
	mov	r1, r4
	bl	__aeabi_fadd
	b	.LBB0_40
.LBB0_39:                               @ %if.end
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r1, #0
	bl	__aeabi_fdiv
	b	.LBB0_40
.LBB0_40:                               @ %return
	mov	r4, r0
	b	.LBB0_41
.LBB0_41:                               @ %return
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	log1pf, .Ltmp0-log1pf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
