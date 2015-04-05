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
	.file	"src/math/sincosf.bc"
	.globl	sincosf
	.align	2
	.type	sincosf,%function
sincosf:                                @ @sincosf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	.LBB0_1
.LBB0_1:                                @ %entry
	b	.LBB0_2
.LBB0_2:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_3
.LBB0_3:                                @ %entry
	mov	r6, r0
	ldr	r0, .LCPI0_14
	mov	r8, r2
	mov	r9, r1
	bic	r4, r6, #-2147483648
	cmp	r4, r0
	bhi	.LBB0_8
	b	.LBB0_4
.LCPI0_14:
	.long	1061752794              @ 0x3f490fda
.LBB0_4:                                @ %if.then
	lsr	r0, r4, #23
	cmp	r0, #114
	bhi	.LBB0_12
	b	.LBB0_5
.LBB0_5:                                @ %do.body3
	mov	r0, r6
	mov	r1, #58720256
	bl	__aeabi_fmul
	mov	r1, #998244352
	b	.LBB0_6
.LBB0_6:                                @ %do.body3
	mov	r7, r0
	mov	r0, r6
	orr	r1, r1, #1073741824
	bl	__aeabi_fadd
	b	.LBB0_7
.LBB0_7:                                @ %do.body3
	cmp	r4, #1048576
	movlo	r0, r7
	str	r0, [sp, #4]
	mov	r0, #1065353216
	str	r6, [r9]
	str	r0, [r8]
	b	.LBB0_39
.LBB0_8:                                @ %if.end8
	ldr	r0, .LCPI0_15
	lsr	r5, r6, #31
	cmp	r4, r0
	bhi	.LBB0_13
	b	.LBB0_9
.LCPI0_15:
	.long	1081824209              @ 0x407b53d1
.LBB0_9:                                @ %if.then11
	mov	r0, r6
	bl	__aeabi_f2d
	mov	r7, r0
	ldr	r0, .LCPI0_28
	mov	r6, r1
	cmp	r4, r0
	bhi	.LBB0_19
	b	.LBB0_10
.LCPI0_28:
	.long	1075235811              @ 0x4016cbe3
.LBB0_10:                               @ %if.then14
	cmp	r5, #0
	beq	.LBB0_34
	b	.LBB0_11
.LBB0_11:                               @ %if.then15
	ldr	r2, .LCPI0_20
	ldr	r3, .LCPI0_31
	mov	r0, r7
	mov	r1, r6
	b	.LBB0_37
.LCPI0_20:
	.long	1413754136              @ 0x54442d18
.LCPI0_31:
	.long	1073291771              @ 0x3ff921fb
.LBB0_12:                               @ %if.end
	mov	r0, r6
	bl	__aeabi_f2d
	b	.LBB0_27
.LBB0_13:                               @ %if.end52
	ldr	r0, .LCPI0_16
	cmp	r4, r0
	bhi	.LBB0_24
	b	.LBB0_14
.LCPI0_16:
	.long	1088565717              @ 0x40e231d5
.LBB0_14:                               @ %if.then55
	mov	r0, r6
	bl	__aeabi_f2d
	ldr	r2, .LCPI0_17
	cmp	r4, r2
	bhi	.LBB0_26
	b	.LBB0_15
.LCPI0_17:
	.long	1085271519              @ 0x40afeddf
.LBB0_15:                               @ %if.then58
	cmp	r5, #0
	beq	.LBB0_36
	b	.LBB0_16
.LBB0_16:                               @ %if.then60
	ldr	r2, .LCPI0_24
	ldr	r3, .LCPI0_27
	bl	__aeabi_dadd
	mov	r6, r0
	b	.LBB0_17
.LCPI0_24:
	.long	2134057426              @ 0x7f3321d2
.LCPI0_27:
	.long	1074977148              @ 0x4012d97c
.LBB0_17:                               @ %if.then60
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__cosdf
	b	.LBB0_18
.LBB0_18:                               @ %if.then60
	str	r0, [r9]
	mov	r0, r6
	mov	r1, r7
	bl	__sindf
	b	.LBB0_23
.LBB0_19:                               @ %if.end29
	ldr	r0, .LCPI0_29
	ldr	r3, .LCPI0_30
	ldr	r2, .LCPI0_21
	cmp	r5, #0
	b	.LBB0_20
.LCPI0_21:
	.long	1413754136              @ 0x54442d18
.LCPI0_29:
	.long	1074340347              @ 0x400921fb
.LCPI0_30:
	.long	3221823995              @ 0xc00921fb
.LBB0_20:                               @ %if.end29
	mov	r1, r6
	movne	r3, r0
	mov	r0, r7
	bl	__aeabi_dadd
	b	.LBB0_21
.LBB0_21:                               @ %if.end29
	mov	r6, r0
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	b	.LBB0_22
.LBB0_22:                               @ %if.end29
	bl	__sindf
	eor	r0, r0, #-2147483648
	mov	r1, r7
	str	r0, [r9]
	mov	r0, r6
	bl	__cosdf
	b	.LBB0_23
.LBB0_23:                               @ %sw.epilog
	eor	r0, r0, #-2147483648
	str	r0, [r8]
	b	.LBB0_39
.LBB0_24:                               @ %if.end98
	lsr	r0, r4, #23
	cmp	r0, #255
	blo	.LBB0_29
	b	.LBB0_25
.LBB0_25:                               @ %if.then101
	mov	r0, r6
	mov	r1, r6
	bl	__aeabi_fsub
	str	r0, [r8]
	str	r0, [r9]
	b	.LBB0_39
.LBB0_26:                               @ %if.end77
	ldr	r2, .LCPI0_18
	ldr	r3, .LCPI0_19
	cmp	r5, #0
	movne	r3, r2
	ldr	r2, .LCPI0_22
	bl	__aeabi_dadd
	b	.LBB0_27
.LCPI0_18:
	.long	1075388923              @ 0x401921fb
.LCPI0_19:
	.long	3222872571              @ 0xc01921fb
.LCPI0_22:
	.long	1413754136              @ 0x54442d18
.LBB0_27:                               @ %sw.epilog
	mov	r6, r0
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	b	.LBB0_28
.LBB0_28:                               @ %sw.epilog
	bl	__sindf
	str	r0, [r9]
	mov	r0, r6
	mov	r1, r7
	bl	__cosdf
	str	r0, [r8]
	b	.LBB0_39
.LBB0_29:                               @ %if.end103
	add	r1, sp, #8
	mov	r0, r6
	bl	__rem_pio2f
	and	r4, r0, #3
	b	.LBB0_30
.LBB0_30:                               @ %if.end103
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	bl	__sindf
	mov	r6, r0
	b	.LBB0_31
.LBB0_31:                               @ %if.end103
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	bl	__cosdf
	cmp	r4, #2
	beq	.LBB0_40
	b	.LBB0_32
.LBB0_32:                               @ %if.end103
	cmp	r4, #1
	bne	.LBB0_41
	b	.LBB0_33
.LBB0_33:                               @ %sw.bb108
	str	r0, [r9]
	eor	r0, r6, #-2147483648
	str	r0, [r8]
	b	.LBB0_39
.LBB0_34:                               @ %if.else
	ldr	r0, .LCPI0_23
	ldr	r1, .LCPI0_32
	mov	r2, r7
	mov	r3, r6
	b	.LBB0_35
.LCPI0_23:
	.long	1413754136              @ 0x54442d18
.LCPI0_32:
	.long	1073291771              @ 0x3ff921fb
.LBB0_35:                               @ %if.else
	bl	__aeabi_dsub
	mov	r6, r0
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__cosdf
	b	.LBB0_38
.LBB0_36:                               @ %if.else68
	ldr	r2, .LCPI0_25
	ldr	r3, .LCPI0_26
	b	.LBB0_37
.LCPI0_25:
	.long	2134057426              @ 0x7f3321d2
.LCPI0_26:
	.long	3222460796              @ 0xc012d97c
.LBB0_37:                               @ %sw.epilog
	bl	__aeabi_dadd
	mov	r6, r0
	mov	r7, r1
                                        @ kill: R0<def> R6<kill>
                                        @ kill: R1<def> R7<kill>
	bl	__cosdf
	eor	r0, r0, #-2147483648
	b	.LBB0_38
.LBB0_38:                               @ %sw.epilog
	str	r0, [r9]
	mov	r0, r6
	mov	r1, r7
	bl	__sindf
	str	r0, [r8]
	b	.LBB0_39
.LBB0_39:                               @ %sw.epilog
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	mov	pc, lr
.LBB0_40:                               @ %sw.bb110
	eor	r1, r6, #-2147483648
	str	r1, [r9]
	b	.LBB0_23
.LBB0_41:                               @ %if.end103
	cmp	r4, #0
	bne	.LBB0_43
	b	.LBB0_42
.LBB0_42:                               @ %sw.bb
	str	r6, [r9]
	str	r0, [r8]
	b	.LBB0_39
.LBB0_43:                               @ %sw.default
	eor	r0, r0, #-2147483648
	str	r0, [r9]
	str	r6, [r8]
	b	.LBB0_39
.Ltmp0:
	.size	sincosf, .Ltmp0-sincosf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
