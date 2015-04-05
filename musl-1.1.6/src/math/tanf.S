.section tanf_text
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
	.file	"src/math/tanf.bc"
	.globl	tanf
	.align	2
	.type	tanf,%function
.section bb0_0
tanf:                                   @ @tanf
	.fnstart
.Leh_func_begin0:
.LBB0_0:                                @ %entry
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	b	.LBB0_1
.section bb0_1
.LBB0_1:                                @ %entry
	.pad	#16
	sub	sp, sp, #16
	b	.LBB0_2
.section bb0_2
.LBB0_2:                                @ %entry
	mov	r4, r0
	ldr	r0, .LCPI0_15
	bic	r6, r4, #-2147483648
	cmp	r6, r0
	bhi	.LBB0_6
	b	.LBB0_3
.LCPI0_15:
	.long	1061752794              @ 0x3f490fda
.section bb0_3
.LBB0_3:                                @ %if.then
	lsr	r0, r6, #23
	cmp	r0, #114
	bhi	.LBB0_9
	b	.LBB0_4
.section bb0_4
.LBB0_4:                                @ %do.body3
	mov	r0, r4
	mov	r1, #58720256
	bl	__aeabi_fmul
	mov	r1, #998244352
	b	.LBB0_5
.section bb0_5
.LBB0_5:                                @ %do.body3
	mov	r5, r0
	mov	r0, r4
	orr	r1, r1, #1073741824
	bl	__aeabi_fadd
	cmp	r6, #8388608
	movlo	r0, r5
	str	r0, [sp, #4]
	b	.LBB0_23
.section bb0_6
.LBB0_6:                                @ %if.end6
	ldr	r0, .LCPI0_16
	lsr	r5, r4, #31
	cmp	r6, r0
	bhi	.LBB0_10
	b	.LBB0_7
.LCPI0_16:
	.long	1081824209              @ 0x407b53d1
.section bb0_7
.LBB0_7:                                @ %if.then9
	mov	r0, r4
	bl	__aeabi_f2d
	ldr	r2, .LCPI0_26
	cmp	r6, r2
	bhi	.LBB0_14
	b	.LBB0_8
.LCPI0_26:
	.long	1075235811              @ 0x4016cbe3
.section bb0_8
.LBB0_8:                                @ %if.then12
	ldr	r2, .LCPI0_29
	ldr	r3, .LCPI0_30
	cmp	r5, #0
	movne	r3, r2
	ldr	r2, .LCPI0_21
	b	.LBB0_13
.LCPI0_21:
	.long	1413754136              @ 0x54442d18
.LCPI0_29:
	.long	1073291771              @ 0x3ff921fb
.LCPI0_30:
	.long	3220775419              @ 0xbff921fb
.section bb0_9
.LBB0_9:                                @ %if.end
	mov	r0, r4
	bl	__aeabi_f2d
	b	.LBB0_19
.section bb0_10
.LBB0_10:                               @ %if.end31
	ldr	r0, .LCPI0_17
	cmp	r6, r0
	bhi	.LBB0_15
	b	.LBB0_11
.LCPI0_17:
	.long	1088565717              @ 0x40e231d5
.section bb0_11
.LBB0_11:                               @ %if.then34
	mov	r0, r4
	bl	__aeabi_f2d
	ldr	r2, .LCPI0_18
	cmp	r6, r2
	bhi	.LBB0_17
	b	.LBB0_12
.LCPI0_18:
	.long	1085271519              @ 0x40afeddf
.section bb0_12
.LBB0_12:                               @ %if.then37
	ldr	r2, .LCPI0_23
	ldr	r3, .LCPI0_24
	cmp	r5, #0
	movne	r3, r2
	ldr	r2, .LCPI0_25
	b	.LBB0_13
.LCPI0_23:
	.long	1074977148              @ 0x4012d97c
.LCPI0_24:
	.long	3222460796              @ 0xc012d97c
.LCPI0_25:
	.long	2134057426              @ 0x7f3321d2
.section bb0_13
.LBB0_13:                               @ %if.then12
	bl	__aeabi_dadd
	mov	r2, #1
	b	.LBB0_20
.section bb0_14
.LBB0_14:                               @ %if.else
	ldr	r2, .LCPI0_27
	ldr	r3, .LCPI0_28
	b	.LBB0_18
.LCPI0_27:
	.long	1074340347              @ 0x400921fb
.LCPI0_28:
	.long	3221823995              @ 0xc00921fb
.section bb0_15
.LBB0_15:                               @ %if.end59
	lsr	r0, r6, #23
	cmp	r0, #255
	blo	.LBB0_21
	b	.LBB0_16
.section bb0_16
.LBB0_16:                               @ %if.then62
	mov	r0, r4
	mov	r1, r4
	bl	__aeabi_fsub
	b	.LBB0_22
.section bb0_17
.LBB0_17:                               @ %if.else48
	ldr	r2, .LCPI0_19
	ldr	r3, .LCPI0_20
	b	.LBB0_18
.LCPI0_19:
	.long	1075388923              @ 0x401921fb
.LCPI0_20:
	.long	3222872571              @ 0xc01921fb
.section bb0_18
.LBB0_18:                               @ %if.else
	cmp	r5, #0
	movne	r3, r2
	ldr	r2, .LCPI0_22
	bl	__aeabi_dadd
	b	.LBB0_19
.LCPI0_22:
	.long	1413754136              @ 0x54442d18
.section bb0_19
.LBB0_19:                               @ %if.end
	mov	r2, #0
	b	.LBB0_20
.section bb0_20
.LBB0_20:                               @ %if.end
	add	sp, sp, #16
	pop	{r4, r5, r6, lr}
	b	__tandf
.section bb0_21
.LBB0_21:                               @ %if.end64
	add	r1, sp, #8
	mov	r0, r4
	bl	__rem_pio2f
	and	r2, r0, #1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	bl	__tandf
	b	.LBB0_22
.section bb0_22
.LBB0_22:                               @ %return
	mov	r4, r0
	b	.LBB0_23
.section bb0_23
.LBB0_23:                               @ %return
	mov	r0, r4
	add	sp, sp, #16
	pop	{r4, r5, r6, lr}
	mov	pc, lr
.Ltmp0:
	.size	tanf, .Ltmp0-tanf
	.cantunwind
	.fnend


	.ident	"clang version 3.7.0 (trunk 229146)"
	.section	".note.GNU-stack","",%progbits
