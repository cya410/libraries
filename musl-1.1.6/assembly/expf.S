.section expf_text
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
	.file	"src/math/expf.bc"
	.globl	expf
	.align	2
	.type	expf,%function
.section bb0_0
expf:                                   @ @expf
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
	ldr	r0, .LCPI0_11
	b	.LBB0_3
.LCPI0_11:
	.long	1118743632              @ 0x42aeac50
.section bb0_3
.LBB0_3:                                @ %entry
	bic	r7, r4, #-2147483648
	lsr	r5, r4, #31
	cmp	r7, r0
	blo	.LBB0_7
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %if.then
	ldr	r0, .LCPI0_14
	cmp	r7, r0
	blo	.LBB0_10
	b	.LBB0_5
.LCPI0_14:
	.long	1118925336              @ 0x42b17218
.section bb0_5
.LBB0_5:                                @ %if.then
	cmp	r5, #0
	bne	.LBB0_10
	b	.LBB0_6
.section bb0_6
.LBB0_6:                                @ %if.then2
	mov	r0, r4
	mov	r1, #2130706432
	bl	__aeabi_fmul
	b	.LBB0_31
.section bb0_7
.LBB0_7:                                @ %if.end11
	ldr	r0, .LCPI0_12
	cmp	r7, r0
	blo	.LBB0_19
	b	.LBB0_8
.LCPI0_12:
	.long	1051816473              @ 0x3eb17219
.section bb0_8
.LBB0_8:                                @ %if.then13
	ldr	r0, .LCPI0_13
	cmp	r7, r0
	bhs	.LBB0_13
	b	.LBB0_9
.LCPI0_13:
	.long	1065686419              @ 0x3f851593
.section bb0_9
.LBB0_9:                                @ %if.else
	eor	r0, r5, #1
	sub	r8, r0, r5
	b	.LBB0_15
.section bb0_10
.LBB0_10:                               @ %if.end
	cmp	r5, #0
	beq	.LBB0_13
	b	.LBB0_11
.section bb0_11
.LBB0_11:                               @ %do.body5
	mov	r0, #-2147483647
	mov	r1, r4
	bl	__aeabi_fdiv
	str	r0, [sp, #4]
	b	.LBB0_12
.section bb0_12
.LBB0_12:                               @ %do.body5
	mov	r0, #0
	ldr	r1, .LCPI0_15
	cmp	r7, r1
	bhi	.LBB0_31
	b	.LBB0_13
.LCPI0_15:
	.long	1120924084              @ 0x42cff1b4
.section bb0_13
.LBB0_13:                               @ %if.then15
	ldr	r1, .LCPI0_16
	mov	r0, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_17
	b	.LBB0_14
.LCPI0_16:
	.long	1069066811              @ 0x3fb8aa3b
.LCPI0_17:
	.long	half
.section bb0_14
.LBB0_14:                               @ %if.then15
	ldr	r1, [r1, r5, lsl #2]
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	mov	r8, r0
	b	.LBB0_15
.section bb0_15
.LBB0_15:                               @ %if.end18
	mov	r0, r8
	bl	__aeabi_i2f
	ldr	r1, .LCPI0_18
	mov	r6, r0
	b	.LBB0_16
.LCPI0_18:
	.long	3207688704              @ 0xbf317200
.section bb0_16
.LBB0_16:                               @ %if.end18
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r4
	b	.LBB0_17
.section bb0_17
.LBB0_17:                               @ %if.end18
	bl	__aeabi_fadd
	ldr	r1, .LCPI0_19
	mov	r4, r0
	mov	r0, r6
	b	.LBB0_18
.LCPI0_19:
	.long	901758606               @ 0x35bfbe8e
.section bb0_18
.LBB0_18:                               @ %if.end18
	bl	__aeabi_fmul
	mov	r6, r0
	mov	r0, r4
	mov	r1, r6
	bl	__aeabi_fsub
	mov	r7, r0
	b	.LBB0_21
.section bb0_19
.LBB0_19:                               @ %if.else25
	mov	r6, #0
	cmp	r7, #956301312
	bls	.LBB0_30
	b	.LBB0_20
.section bb0_20
.LBB0_20:
	mov	r8, #0
	mov	r7, r4
	b	.LBB0_21
.section bb0_21
.LBB0_21:                               @ %if.end36
	mov	r0, r7
	mov	r1, r7
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_20
	b	.LBB0_22
.LCPI0_20:
	.long	3140833813              @ 0xbb355215
.section bb0_22
.LBB0_22:                               @ %if.end36
	mov	r5, r0
                                        @ kill: R0<def> R5<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_21
	b	.LBB0_23
.LCPI0_21:
	.long	1042983567              @ 0x3e2aaa8f
.section bb0_23
.LBB0_23:                               @ %if.end36
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fmul
	b	.LBB0_24
.section bb0_24
.LBB0_24:                               @ %if.end36
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fsub
	mov	r5, r0
	b	.LBB0_25
.section bb0_25
.LBB0_25:                               @ %if.end36
	mov	r0, r7
	mov	r1, r5
	bl	__aeabi_fmul
	mov	r7, r0
	b	.LBB0_26
.section bb0_26
.LBB0_26:                               @ %if.end36
	mov	r0, #1073741824
	mov	r1, r5
	bl	__aeabi_fsub
	mov	r1, r0
	b	.LBB0_27
.section bb0_27
.LBB0_27:                               @ %if.end36
	mov	r0, r7
	bl	__aeabi_fdiv
	mov	r1, r6
	bl	__aeabi_fsub
	b	.LBB0_28
.section bb0_28
.LBB0_28:                               @ %if.end36
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd
	mov	r1, #1065353216
	bl	__aeabi_fadd
	cmp	r8, #0
	beq	.LBB0_31
	b	.LBB0_29
.section bb0_29
.LBB0_29:                               @ %if.end51
	mov	r1, r8
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	b	scalbnf
.section bb0_30
.LBB0_30:                               @ %do.body30
	mov	r0, r4
	mov	r1, #2130706432
	bl	__aeabi_fadd
	str	r0, [sp]
	mov	r0, r4
	mov	r1, #1065353216
	bl	__aeabi_fadd
	b	.LBB0_31
.section bb0_31
.LBB0_31:                               @ %return
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, lr}
	mov	pc, lr
.Ltmp0:
	.size	expf, .Ltmp0-expf
	.cantunwind
	.fnend

	.type	half,%object            @ @half
	.section	.rodata.cst8,"aM",%progbits,8
	.align	2
half:
	.long	1056964608              @ float 5.000000e-01
	.long	3204448256              @ float -5.000000e-01
	.size	half, 8


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
