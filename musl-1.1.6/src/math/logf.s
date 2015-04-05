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
	.file	"src/math/logf.bc"
	.globl	logf
	.align	2
	.type	logf,%function
logf:                                   @ @logf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	mov	r1, r0
                                        @ kill: R0<def> R1<kill>
	cmp	r1, #8388608
	blo	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                @ %entry
	cmp	r1, #0
	blt	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                @ %if.else
	lsr	r2, r1, #23
	cmp	r2, #254
	bhi	.LBB0_31
	b	.LBB0_5
.LBB0_5:                                @ %if.else15
	mov	r0, #0
	cmp	r1, #1065353216
	beq	.LBB0_31
	b	.LBB0_6
.LBB0_6:
	mvn	r9, #126
	b	.LBB0_10
.LBB0_7:                                @ %if.then
	mvn	r2, #-2147483648
	tst	r1, r2
	beq	.LBB0_29
	b	.LBB0_8
.LBB0_8:                                @ %if.end
	cmp	r1, #0
	blt	.LBB0_30
	b	.LBB0_9
.LBB0_9:                                @ %if.end8
	mov	r1, #1275068416
	bl	__aeabi_fmul
	mov	r1, r0
	mvn	r9, #151
	b	.LBB0_10
.LBB0_10:                               @ %if.end20
	ldr	r0, .LCPI0_9
	add	r10, r1, r0
	ldr	r0, .LCPI0_10
	ldr	r1, .LCPI0_11
	b	.LBB0_11
.LCPI0_9:
	.long	4913933                 @ 0x4afb0d
.LCPI0_10:
	.long	8388607                 @ 0x7fffff
.LCPI0_11:
	.long	1060439283              @ 0x3f3504f3
.LBB0_11:                               @ %if.end20
	and	r0, r10, r0
	add	r0, r0, r1
	mov	r1, #1065353216
	orr	r1, r1, #-2147483648
	b	.LBB0_12
.LBB0_12:                               @ %if.end20
	bl	__aeabi_fadd
	mov	r4, r0
	mov	r1, #1073741824
                                        @ kill: R0<def> R4<kill>
	b	.LBB0_13
.LBB0_13:                               @ %if.end20
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv
	b	.LBB0_14
.LBB0_14:                               @ %if.end20
	mov	r8, r0
	mov	r1, r8
                                        @ kill: R0<def> R8<kill>
	bl	__aeabi_fmul
	b	.LBB0_15
.LBB0_15:                               @ %if.end20
	mov	r6, r0
	mov	r1, r6
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fmul
	b	.LBB0_16
.LBB0_16:                               @ %if.end20
	ldr	r1, .LCPI0_12
	mov	r7, r0
                                        @ kill: R0<def> R7<kill>
	bl	__aeabi_fmul
	b	.LBB0_17
.LCPI0_12:
	.long	1048092198              @ 0x3e789e26
.LBB0_17:                               @ %if.end20
	ldr	r1, .LCPI0_13
	bl	__aeabi_fadd
	mov	r1, r0
	mov	r0, r7
	b	.LBB0_18
.LCPI0_13:
	.long	1053609491              @ 0x3eccce13
.LBB0_18:                               @ %if.end20
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_14
	mov	r5, r0
	mov	r0, r7
	b	.LBB0_19
.LCPI0_14:
	.long	1049749998              @ 0x3e91e9ee
.LBB0_19:                               @ %if.end20
	bl	__aeabi_fmul
	ldr	r1, .LCPI0_15
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_20
.LCPI0_15:
	.long	1059760810              @ 0x3f2aaaaa
.LBB0_20:                               @ %if.end20
	mov	r0, r6
	bl	__aeabi_fmul
	mov	r1, r5
	bl	__aeabi_fadd
	b	.LBB0_21
.LBB0_21:                               @ %if.end20
	mov	r5, r0
	mov	r0, r4
	mov	r1, #1056964608
	bl	__aeabi_fmul
	b	.LBB0_22
.LBB0_22:                               @ %if.end20
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	mov	r6, r0
	b	.LBB0_23
.LBB0_23:                               @ %if.end20
	mov	r1, r5
                                        @ kill: R0<def> R6<kill>
	bl	__aeabi_fadd
	mov	r1, r0
	b	.LBB0_24
.LBB0_24:                               @ %if.end20
	mov	r0, r8
	bl	__aeabi_fmul
	mov	r5, r0
	add	r0, r9, r10, lsr #23
	b	.LBB0_25
.LBB0_25:                               @ %if.end20
	bl	__aeabi_i2f
	ldr	r1, .LCPI0_16
	mov	r7, r0
                                        @ kill: R0<def> R7<kill>
	b	.LBB0_26
.LCPI0_16:
	.long	924317649               @ 0x3717f7d1
.LBB0_26:                               @ %if.end20
	bl	__aeabi_fmul
	mov	r1, r5
	bl	__aeabi_fadd
	mov	r1, r6
	b	.LBB0_27
.LBB0_27:                               @ %if.end20
	bl	__aeabi_fsub
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd
	b	.LBB0_28
.LBB0_28:                               @ %if.end20
	ldr	r1, .LCPI0_17
	mov	r4, r0
	mov	r0, r7
	bl	__aeabi_fmul
	mov	r1, r4
	bl	__aeabi_fadd
	b	.LBB0_31
.LCPI0_17:
	.long	1060204928              @ 0x3f317180
.LBB0_29:                               @ %if.then3
	mov	r1, r0
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, #1065353216
	orr	r0, r0, #-2147483648
	bl	__aeabi_fdiv
	b	.LBB0_31
.LBB0_30:                               @ %if.then6
	mov	r1, r0
	bl	__aeabi_fsub
	mov	r1, #0
	bl	__aeabi_fdiv
	b	.LBB0_31
.LBB0_31:                               @ %return
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	pc, lr
.Ltmp0:
	.size	logf, .Ltmp0-logf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
