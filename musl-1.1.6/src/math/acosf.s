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
	.file	"src/math/acosf.bc"
	.globl	acosf
	.align	2
	.type	acosf,%function
acosf:                                  @ @acosf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	bic	r1, r4, #-2147483648
	cmp	r1, #1065353216
	blo	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                @ %if.then
	bne	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                @ %if.then2
	ldr	r0, .LCPI0_11
	and	r0, r0, r4, asr #31
	b	.LBB0_27
.LCPI0_11:
	.long	1078530010              @ 0x40490fda
.LBB0_5:                                @ %if.end5
	lsr	r0, r1, #24
	cmp	r0, #62
	bhi	.LBB0_11
	b	.LBB0_6
.LBB0_6:                                @ %if.then7
	ldr	r0, .LCPI0_7
	cmp	r1, #847249408
	bls	.LBB0_27
	b	.LBB0_7
.LCPI0_7:
	.long	1070141402              @ 0x3fc90fda
.LBB0_7:                                @ %if.end10
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fmul
	bl	R
	b	.LBB0_8
.LBB0_8:                                @ %if.end10
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, .LCPI0_10
	b	.LBB0_9
.LCPI0_10:
	.long	866263400               @ 0x33a22168
.LBB0_9:                                @ %if.end10
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fsub
	mov	r1, r0
	ldr	r0, .LCPI0_8
	bl	__aeabi_fsub
	b	.LBB0_27
.LCPI0_8:
	.long	1070141402              @ 0x3fc90fda
.LBB0_10:                               @ %if.end4
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, #0
	bl	__aeabi_fdiv
	b	.LBB0_27
.LBB0_11:                               @ %if.end15
	cmp	r4, #0
	blt	.LBB0_21
	b	.LBB0_12
.LBB0_12:                               @ %if.end27
	mov	r0, #1065353216
	mov	r1, r4
	bl	__aeabi_fsub
	mov	r1, #1056964608
	b	.LBB0_13
.LBB0_13:                               @ %if.end27
	bl	__aeabi_fmul
	mov	r5, r0
                                        @ kill: R0<def> R5<kill>
	bl	sqrtf
	b	.LBB0_14
.LBB0_14:                               @ %if.end27
	mov	r6, r0
	ldr	r0, .LCPI0_5
	and	r4, r6, r0
	mov	r0, r4
	b	.LBB0_15
.LCPI0_5:
	.long	4294963200              @ 0xfffff000
.LBB0_15:                               @ %if.end27
	mov	r1, r4
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r5
	b	.LBB0_16
.LBB0_16:                               @ %if.end27
	bl	__aeabi_fsub
	mov	r7, r0
	mov	r0, r6
	mov	r1, r4
	b	.LBB0_17
.LBB0_17:                               @ %if.end27
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fdiv
	b	.LBB0_18
.LBB0_18:                               @ %if.end27
	mov	r7, r0
	mov	r0, r5
	bl	R
	mov	r1, r0
	b	.LBB0_19
.LBB0_19:                               @ %if.end27
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_20
.LBB0_20:                               @ %if.end27
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd
	b	.LBB0_26
.LBB0_21:                               @ %if.then18
	mov	r0, r4
	mov	r1, #1065353216
	bl	__aeabi_fadd
	mov	r1, #1056964608
	b	.LBB0_22
.LBB0_22:                               @ %if.then18
	bl	__aeabi_fmul
	mov	r4, r0
                                        @ kill: R0<def> R4<kill>
	bl	sqrtf
	b	.LBB0_23
.LBB0_23:                               @ %if.then18
	mov	r5, r0
	mov	r0, r4
	bl	R
	mov	r1, r0
	b	.LBB0_24
.LBB0_24:                               @ %if.then18
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_6
	bl	__aeabi_fadd
	b	.LBB0_25
.LCPI0_6:
	.long	3013747048              @ 0xb3a22168
.LBB0_25:                               @ %if.then18
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd
	mov	r1, r0
	ldr	r0, .LCPI0_9
	bl	__aeabi_fsub
	b	.LBB0_26
.LCPI0_9:
	.long	1070141402              @ 0x3fc90fda
.LBB0_26:                               @ %return
	mov	r1, r0
	bl	__aeabi_fadd
	b	.LBB0_27
.LBB0_27:                               @ %return
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.Ltmp0:
	.size	acosf, .Ltmp0-acosf
	.cantunwind
	.fnend

	.align	2
	.type	R,%function
R:                                      @ @R
	.fnstart
.Leh_func_begin1:
.LBB1_0:                                @ %entry
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	b	.LBB1_1
.LBB1_1:                                @ %entry
	ldr	r1, .LCPI1_0
	mov	r4, r0
	b	.LBB1_2
.LCPI1_0:
	.long	3155022699              @ 0xbc0dd36b
.LBB1_2:                                @ %entry
                                        @ kill: R0<def> R4<kill>
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_4
	bl	__aeabi_fadd
	b	.LBB1_3
.LCPI1_4:
	.long	3173979066              @ 0xbd2f13ba
.LBB1_3:                                @ %entry
	mov	r1, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_5
	bl	__aeabi_fadd
	b	.LBB1_4
.LCPI1_5:
	.long	1042983541              @ 0x3e2aaa75
.LBB1_4:                                @ %entry
	mov	r1, r4
	bl	__aeabi_fmul
	ldr	r1, .LCPI1_6
	mov	r5, r0
	b	.LBB1_5
.LCPI1_6:
	.long	3207914926              @ 0xbf34e5ae
.LBB1_5:                                @ %entry
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r1, #1065353216
	bl	__aeabi_fadd
	b	.LBB1_6
.LBB1_6:                                @ %entry
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv
	pop	{r4, r5, r11, lr}
	mov	pc, lr
.Ltmp1:
	.size	R, .Ltmp1-R
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
