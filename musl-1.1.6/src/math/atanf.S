.section atanf_text
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
	.file	"src/math/atanf.bc"
	.globl	atanf
	.align	2
	.type	atanf,%function
.section bb0_0
atanf:                                  @ @atanf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, lr}
	push	{r4, r5, r6, r7, r8, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	bic	r5, r4, #-2147483648
	b	.LBB0_3
.section bb0_3
.LBB0_3:                                @ %entry
	lsr	r8, r4, #31
	lsr	r0, r5, #23
	cmp	r0, #153
	blo	.LBB0_6
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %cond.true
	mov	r0, #1065353216
	orr	r0, r0, #1073741824
	cmp	r5, r0
	bhi	.LBB0_38
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %if.end
	ldr	r0, .LCPI0_24
	ldr	r4, .LCPI0_25
	cmp	r8, #0
	movne	r4, r0
	b	.LBB0_38
.LCPI0_24:
	.long	3217625050              @ 0xbfc90fda
.LCPI0_25:
	.long	1070141402              @ 0x3fc90fda
.section bb0_6
.LBB0_6:                                @ %if.end16
	ldr	r1, .LCPI0_13
	cmp	r5, r1
	bhi	.LBB0_10
	b	.LBB0_7
.LCPI0_13:
	.long	1054867455              @ 0x3edfffff
.section bb0_7
.LBB0_7:                                @ %if.then19
	mvn	r7, #0
	cmp	r0, #114
	bhi	.LBB0_23
	b	.LBB0_8
.section bb0_8
.LBB0_8:                                @ %if.then22
	mov	r0, #0
	cmp	r0, r5, lsr #23
	bne	.LBB0_38
	b	.LBB0_9
.section bb0_9
.LBB0_9:                                @ %do.body26
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	str	r0, [sp, #4]
	b	.LBB0_38
.section bb0_10
.LBB0_10:                               @ %if.else
	mov	r0, r4
	bl	fabsf
	mov	r4, r0
	ldr	r0, .LCPI0_14
	cmp	r5, r0
	bhi	.LBB0_15
	b	.LBB0_11
.LCPI0_14:
	.long	1066926079              @ 0x3f97ffff
.section bb0_11
.LBB0_11:                               @ %if.then33
	ldr	r0, .LCPI0_16
	cmp	r5, r0
	bhi	.LBB0_19
	b	.LBB0_12
.LCPI0_16:
	.long	1060110335              @ 0x3f2fffff
.section bb0_12
.LBB0_12:                               @ %if.then36
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fadd
	mov	r1, #1065353216
	b	.LBB0_13
.section bb0_13
.LBB0_13:                               @ %if.then36
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	mov	r5, r0
	mov	r0, r4
	b	.LBB0_14
.section bb0_14
.LBB0_14:                               @ %if.then36
	mov	r1, #1073741824
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv
	mov	r4, r0
	mov	r7, #0
	b	.LBB0_23
.section bb0_15
.LBB0_15:                               @ %if.else45
	ldr	r0, .LCPI0_15
	cmp	r5, r0
	bhi	.LBB0_22
	b	.LBB0_16
.LCPI0_15:
	.long	1075576831              @ 0x401bffff
.section bb0_16
.LBB0_16:                               @ %if.then48
	mov	r1, #1069547520
	mov	r0, r4
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.then48
	mov	r5, r0
	mov	r0, r4
	mov	r1, #1069547520
	bl	__aeabi_fmul
	b	.LBB0_18
.section bb0_18
.LBB0_18:                               @ %if.then48
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv
	mov	r4, r0
	mov	r7, #2
	b	.LBB0_23
.section bb0_19
.LBB0_19:                               @ %if.else40
	mov	r1, #1065353216
	mov	r0, r4
	orr	r1, r1, #-2147483648
	bl	__aeabi_fadd
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.else40
	mov	r5, r0
	mov	r0, r4
	mov	r1, #1065353216
	bl	__aeabi_fadd
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.else40
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv
	mov	r4, r0
	mov	r7, #1
	b	.LBB0_23
.section bb0_22
.LBB0_22:                               @ %if.else53
	mov	r0, #1065353216
	mov	r1, r4
	orr	r0, r0, #-2147483648
	bl	__aeabi_fdiv
	mov	r4, r0
	mov	r7, #3
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %if.end57
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r6, r0
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end57
	mov	r1, r6
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_17
	b	.LBB0_25
.LCPI0_17:
	.long	1031580709              @ 0x3d7cac25
.section bb0_25
.LBB0_25:                               @ %if.end57
	mov	r5, r0
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_18
	b	.LBB0_26
.LCPI0_18:
	.long	1041364237              @ 0x3e11f50d
.section bb0_26
.LBB0_26:                               @ %if.end57
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end57
	ldr	r1, .LCPI0_19
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r6
	b	.LBB0_28
.LCPI0_19:
	.long	1051372201              @ 0x3eaaaaa9
.section bb0_28
.LBB0_28:                               @ %if.end57
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_20
	mov	r6, r0
	mov	r0, r5
	b	.LBB0_29
.LCPI0_20:
	.long	3185185351              @ 0xbdda1247
.section bb0_29
.LBB0_29:                               @ %if.end57
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_21
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_30
.LCPI0_21:
	.long	3192703640              @ 0xbe4cca98
.section bb0_30
.LBB0_30:                               @ %if.end57
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r6
	cmp	r7, #0
	blt	.LBB0_36
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %if.end74
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	b	.LBB0_32
.section bb0_32
.LBB0_32:                               @ %if.end74
	ldr	r1, .LCPI0_22
	ldr	r1, [r1, r7, lsl #2]
	bl	__aeabi_fsub
	mov	r1, r4
	b	.LBB0_33
.LCPI0_22:
	.long	atanlo
.section bb0_33
.LBB0_33:                               @ %if.end74
	bl	__aeabi_fsub
	mov	r1, r0
	ldr	r0, .LCPI0_23
	ldr	r0, [r0, r7, lsl #2]
	b	.LBB0_34
.LCPI0_23:
	.long	atanhi
.section bb0_34
.LBB0_34:                               @ %if.end74
	bl	__aeabi_fsub
	mov	r5, r0
	mov	r0, #-2147483648
	mov	r1, r5
	b	.LBB0_35
.section bb0_35
.LBB0_35:                               @ %if.end74
	bl	__aeabi_fsub
	mov	r4, r0
	cmp	r8, #0
	moveq	r4, r5
	b	.LBB0_38
.section bb0_36
.LBB0_36:                               @ %if.then70
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	b	.LBB0_37
.section bb0_37
.LBB0_37:                               @ %if.then70
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fsub
	mov	r4, r0
	b	.LBB0_38
.section bb0_38
.LBB0_38:                               @ %return
	mov	r0, r4
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	atanf, .Ltmp0-atanf
	.cantunwind
	.fnend

	.type	atanhi,%object          @ @atanhi
	.section	.rodata.cst16,"aM",%progbits,16
	.align	2
atanhi:
	.long	1055744824              @ float 4.636476e-01
	.long	1061752794              @ float 7.853981e-01
	.long	1065064542              @ float 9.827937e-01
	.long	1070141402              @ float 1.570796e+00
	.size	atanhi, 16

	.type	atanlo,%object          @ @atanlo
	.align	2
atanlo:
	.long	833369961               @ float 5.012158e-09
	.long	857874792               @ float 3.774895e-08
	.long	856952756               @ float 3.447322e-08
	.long	866263400               @ float 7.549789e-08
	.size	atanlo, 16


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
